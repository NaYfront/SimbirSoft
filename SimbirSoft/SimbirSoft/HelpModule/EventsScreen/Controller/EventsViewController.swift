//
//  EventsViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 24.07.2022.
//

import UIKit

class EventsViewController: UIViewController {
    var events: [Event] = []
    
    private lazy var whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
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
        
        configure()
        makeUI()
    }
    
    private func configure() {
        let filterButton = UIBarButtonItem(image: #imageLiteral(resourceName: "filter"), style: .plain, target: self, action: nil)
        filterButton.tintColor = .white
        navigationItem.rightBarButtonItem = filterButton
        
        eventsCollectionView.delegate = self
        eventsCollectionView.dataSource = self
        eventsCollectionView.register(EventCollectionViewCell.self, forCellWithReuseIdentifier: EventCollectionViewCell.identifier)
    }
    
    private func makeUI() {
        view.backgroundColor = .white
        eventsCollectionView.backgroundColor = .lightGrey
        eventsCollectionView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        
        view.addSubview(segmentedControl)
        segmentedControl.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.left.right.equalToSuperview().inset(16)
        }
        
        view.addSubview(eventsCollectionView)
        eventsCollectionView.snp.makeConstraints { make in
            make.top.equalTo(segmentedControl).inset(42)
            make.right.left.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    private func toAttributedString(label: UILabel, text: String) -> NSAttributedString {
        return NSAttributedString(string: text, attributes: label.attributedText?.attributes(at: 0, effectiveRange: nil))
    }
}

extension EventsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return events.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = eventsCollectionView.dequeueReusableCell(withReuseIdentifier: EventCollectionViewCell.identifier, for: indexPath) as? EventCollectionViewCell else { return UICollectionViewCell() }
        
        cell.mainImageView.image = events[indexPath.row].image
        
        cell.nameLabel.attributedText = toAttributedString(label: cell.nameLabel, text: events[indexPath.row].name)
        
        cell.descriptionLabel.attributedText = toAttributedString(label: cell.descriptionLabel, text: events[indexPath.row].description)
        
        cell.dateLabel.attributedText = toAttributedString(label: cell.dateLabel, text: events[indexPath.row].date)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

private extension CGSize {
    static let cellSize = { () -> CGSize in
        return CGSize(width: UIScreen.main.bounds.width - 16, height: 413)
    }()
}
