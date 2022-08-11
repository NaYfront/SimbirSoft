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
    var events: [Event] = []
    var categoryName = ""
    let dataService = DataService()
    
    // MARK: - User Interface
    private lazy var whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private let indicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.startAnimating()
        indicator.color = .leaf
        
        return indicator
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
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: - Private Functions
    private func configure() {
        view.backgroundColor = .white
        
        startActivityIndicator()
        
        getData()
        
        eventsCollectionView.delegate = self
        eventsCollectionView.dataSource = self
        eventsCollectionView.register(EventCollectionViewCell.self, forCellWithReuseIdentifier: "EventCollectionViewCell")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "filter"), style: .plain, target: self, action: nil)
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    private func makeUI() {
        indicator.stopAnimating()
        
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
    
    private func startActivityIndicator() {
        view.addSubview(indicator)
        indicator.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    private func attributeLabel(label: UILabel, text: String) -> NSAttributedString {
        return NSAttributedString(string: text, attributes: label.attributedText?.attributes(at: 0, effectiveRange: nil))
    }
    
    private func getData() {
        dataService.getData(category: categoryName, type: Event.self) { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let events):
                    self.events = events
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
extension EventsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return events.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = eventsCollectionView.dequeueReusableCell(withReuseIdentifier: "EventCollectionViewCell", for: indexPath) as? EventCollectionViewCell else { return UICollectionViewCell() }
        
        cell.mainImageView.image = UIImage(named: events[indexPath.row].image)
        
        cell.nameLabel.attributedText = attributeLabel(label: cell.nameLabel, text: events[indexPath.row].name)
        
        cell.descriptionLabel.attributedText = attributeLabel(label: cell.descriptionLabel, text: events[indexPath.row].description)
        
        cell.dateLabel.attributedText = attributeLabel(label: cell.dateLabel, text: events[indexPath.row].date)
        
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
        return .cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

// MARK: - Constants
private extension CGSize {
    static let cellSize = { () -> CGSize in
        return CGSize(width: UIScreen.main.bounds.width - 16, height: 413)
    }()
}
