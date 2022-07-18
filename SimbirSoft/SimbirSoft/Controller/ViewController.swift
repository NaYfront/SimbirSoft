//
//  ViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 13.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    let menu = Menu()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Помочь"
        
        self.mainCollectionView.register(UINib(nibName: "MainCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MainCollectionViewCell")
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menu.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as? MainCollectionViewCell else { return UICollectionViewCell() }
        
        cell.categoryNameLabel.text = menu.categories[indexPath.row].name
        cell.categoryImageView.image = menu.categories[indexPath.row].image
        
        return cell
    }
}
