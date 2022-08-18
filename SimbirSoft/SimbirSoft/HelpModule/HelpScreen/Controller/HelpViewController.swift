//
//  ViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 13.07.2022.
//

import SnapKit
import UIKit

class HelpViewController: UIViewController {
    // MARK: - Properties
    private var categories: [Category] = []
    private let dataService = DataService()
    private let mainView = HelpView()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    override func loadView() {
        view = mainView
    }
    
    // MARK: - Configuration
    private func configure() {
        self.navigationItem.title = "Помочь"
        
        getData()
        
        mainView.mainCollectionView.delegate = self
        mainView.mainCollectionView.dataSource = self
        mainView.mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: "MainCollectionViewCell")
        
        let backBarButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backBarButton
    }
    
    // MARK: - Private Functions
    private func getData() {
        dataService.getData(category: nil, type: Category.self) { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let categories):
                    self.categories = categories
                    sleep(1)
                    self.mainView.configure()
                case .failure(let error):
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
}

// MARK: - UICollectionViewDataSource
extension HelpViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as? MainCollectionViewCell else { return UICollectionViewCell() }
        
        let category = categories[indexPath.row]
        cell.configure(with: category)

        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension HelpViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let eventsVC = EventsViewController(categoryName: categories[indexPath.row].name)
        eventsVC.navigationItem.title = categories[indexPath.row].name
        
        self.navigationController?.pushViewController(eventsVC, animated: true)
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension HelpViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return .interitemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return .interitemSpacing
    }
}
