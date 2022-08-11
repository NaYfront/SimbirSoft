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
    var categories: [Category] = []
    let dataService = DataService()
    
    // MARK: - User Interface
    private let mainCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Выберите категорию помощи"
        label.font = .sfuitextRegular(size: 17)
        label.textAlignment = .center
        return label
    }()
    
    private let indicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.startAnimating()
        indicator.color = .leaf
        
        return indicator
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    // MARK: - Private Functions
    private func startActivityIndicator() {
        view.addSubview(indicator)
        indicator.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    private func makeUI() {
        indicator.stopAnimating()
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.left.right.equalToSuperview().inset(20)
        }
                
        view.addSubview(mainCollectionView)
        mainCollectionView.snp.makeConstraints { make in
            make.top.equalTo(label).inset(40)
            make.left.right.equalToSuperview().inset(Int(.interitemSpacing))
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    private func configure() {
        view.backgroundColor = .white
        self.navigationItem.title = "Помочь"
        
        startActivityIndicator()
        
        getData()
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.identifier)
        
        let backBarButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backBarButton
    }
    
    private func getData() {
        dataService.getData(category: nil, type: Category.self) { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let categories):
                    self.categories = categories
                    sleep(1)
                    self.makeUI()
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
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath) as? MainCollectionViewCell else { return UICollectionViewCell() }
        
        cell.label.attributedText = .toAttributedString(attributes: [UIFont.officina(size: 17), UIColor.lightOliveGreen, NSMutableParagraphStyle(alignment: .center, minimumLineLenght: 20)], text: categories[indexPath.row].name)
        
        cell.imageView.image = UIImage(named: categories[indexPath.row].image)
        
        let image = cell.imageView.image
        cell.imageView.snp.makeConstraints { make in
            guard let image = image else { return }
            
            make.width.equalTo(image.size.width / 3)
            make.width.height.equalTo(image.size.height / 3)
        }
        
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension HelpViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let eventsVC = EventsViewController()
        eventsVC.categoryName = categories[indexPath.row].name
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

// MARK: - Constants
private extension CGSize {
    static let cellSize = { () -> CGSize in 
        if UIScreen.main.bounds.width < 375 {
            return smallCellSize
        } else {
            return CGSize(width: 174, height: 160)
        }
    }()
    
    static let smallCellSize: CGSize = CGSize(width: 151, height: 139)
}

private extension CGFloat {
    static let interitemSpacing: CGFloat = (UIScreen.main.bounds.width - CGSize.cellSize.width * 2) / 3
}
