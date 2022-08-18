//
//  EventsView.swift
//  SimbirSoft
//
//  Created by NaYfront on 18.08.2022.
//

import UIKit

class EventsView: UIView {
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
    
    public lazy var eventsCollectionView = UICollectionView(
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
        control.setTitleTextAttributes([
            NSAttributedString.Key.font: UIFont.sfuitextMedium(size: 13),
            NSAttributedString.Key.foregroundColor: UIColor.leaf
        ],
                                       for: .normal)
        control.setTitleTextAttributes([
            NSAttributedString.Key.font: UIFont.sfuitextMedium(size: 13),
            NSAttributedString.Key.foregroundColor: UIColor.white],
                                       for: .selected)
        return control
    }()
    
    // MARK: - Initializers
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .white
        startActivityIndicator()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configuration
    func configure() {
        setupUI()
    }
    
    // MARK: - Private Functions
    private func setupUI() {
        indicator.stopAnimating()
        
        eventsCollectionView.backgroundColor = .lightGrey
        eventsCollectionView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        
        addSubview(segmentedControl)
        segmentedControl.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).inset(10)
            make.left.right.equalToSuperview().inset(16)
        }
        
        addSubview(eventsCollectionView)
        eventsCollectionView.snp.makeConstraints { make in
            make.top.equalTo(segmentedControl).inset(42)
            make.right.left.bottom.equalTo(self.safeAreaLayoutGuide)
        }
    }
    
    private func startActivityIndicator() {
        addSubview(indicator)
        indicator.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
