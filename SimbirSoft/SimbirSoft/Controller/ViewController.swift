//
//  ViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 13.07.2022.
//

import SnapKit
import UIKit

class ViewController: UIViewController {
    let menu = Menu()
    
    private let mainCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Выберите категорию помощи"
        label.font = CustomFont.sfuitext.chooseSize(size: 17)
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.identifier)
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        
        self.navigationItem.title = "Помочь"
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.left.right.equalToSuperview().inset(20)
        }
        
        view.addSubview(mainCollectionView)
        mainCollectionView.snp.makeConstraints { make in
            make.top.equalTo(label).inset(40) // Поменять здесь
            make.left.right.equalToSuperview().inset(10)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    private func toAttributedString(text: String) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = 20
        paragraphStyle.alignment = .center
        
        let myAttribute = [NSAttributedString.Key.font: CustomFont.officina.chooseSize(size: 17), NSAttributedString.Key.foregroundColor: CustomColor.lightOliveGreen, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSAttributedString(string: text, attributes: myAttribute)
        
        return NSAttributedString(attributedString: attributedString)
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menu.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath) as? MainCollectionViewCell else { return UICollectionViewCell() }
        
        cell.label.attributedText = toAttributedString(text: menu.categories[indexPath.row].name)
        cell.imageView.image = menu.categories[indexPath.row].image
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 160)
    }
}
