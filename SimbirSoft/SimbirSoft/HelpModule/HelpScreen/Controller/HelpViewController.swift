//
//  ViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 13.07.2022.
//

import SnapKit
import UIKit

class HelpViewController: UIViewController {
    var categories: [Category] = [Category]()
    let dataService = DataService()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        makeUI()
    }
    
    private func makeUI() {
        view.backgroundColor = .white
        
        self.navigationItem.title = "Помочь"
        
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
        getCategories()
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.identifier)
        
        let backBarButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backBarButton
    }
    
    private func getCategories() {
        dataService.getData { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let categories):
                self.categories = categories
            case .failure(let error):
                fatalError(error.localizedDescription)
            }
        }
    }
}

extension HelpViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return .interitemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return .interitemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let eventsVC = EventsViewController()
        eventsVC.events = categories[indexPath.row].events
        eventsVC.navigationItem.title = categories[indexPath.row].name
        
        self.navigationController?.pushViewController(eventsVC, animated: true)
    }
}

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