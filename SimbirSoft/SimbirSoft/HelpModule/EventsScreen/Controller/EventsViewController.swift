//
//  EventsViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 24.07.2022.
//

import UIKit

class EventsViewController: UIViewController {
    let events: [Event] = []
    
    private lazy var eventsCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    private lazy var segmentedControl: UISegmentedControl = {
        let items = ["Текущие", "Завершенные"]
        
        let control = UISegmentedControl(items: items)
        control.layer.borderWidth = 1
        control.layer.borderColor = UIColor.leaf.cgColor
        control.selectedSegmentTintColor = .leaf
        control.selectedSegmentIndex = 0
        control.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.sfuitextMedium(size: 13), NSAttributedString.Key.foregroundColor: UIColor.leaf], for: .normal)
        control.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.sfuitextMedium(size: 13), NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        return control
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
    }
    
    func makeUI() {
        view.backgroundColor = .white
        
        view.addSubview(segmentedControl)
        segmentedControl.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.left.right.equalToSuperview().inset(16)
        }
    }
}
