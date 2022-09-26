//
//  EventsViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 24.07.2022.
//

import SnapKit
import UIKit

class EventsViewController: UIViewController {
    // MARK: - Properties
    private var events: [Event] = []
    private let categoryName: String
    
    private lazy var mainView = EventsView()
    
    // MARK: - Initializers
    init(categoryName: String) {
        self.categoryName = categoryName
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func loadView() {
        view = mainView
    }
    
    // MARK: - Configuration
    private func configure() {
        getData()
        
        mainView.eventsCollectionView.delegate = self
        mainView.eventsCollectionView.dataSource = self
        mainView.eventsCollectionView.register(EventCollectionViewCell.self, forCellWithReuseIdentifier: "EventCollectionViewCell")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "filter"), style: .plain, target: self, action: nil)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    // MARK: - Private Functions
    private func getData() {
        DataStoreService.shared.getData(type: Event.self, categoryName: categoryName) { [weak self] events in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.events = events
                self.mainView.configure()
            }
        }
    }
}

// MARK: - UICollectionViewDataSource
extension EventsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return events.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainView.eventsCollectionView.dequeueReusableCell(withReuseIdentifier: "EventCollectionViewCell", for: indexPath) as? EventCollectionViewCell else { return UICollectionViewCell() }
        
        let event = events[indexPath.row]
        cell.configure(with: event)
        
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension EventsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailViewController(event: events[indexPath.row])
        
        let fullTitle = events[indexPath.row].name
        let index = fullTitle.index(fullTitle.startIndex, offsetBy: 20)
        let title = String("\(fullTitle[..<index])...")
        
        detailVC.navigationItem.title = title
        
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension EventsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 16, height: 413)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
