//
//  HelpView.swift
//  SimbirSoft
//
//  Created by NaYfront on 18.08.2022.
//

import UIKit

class HelpView: UIView {
    // MARK: - User Interface
    lazy var mainCollectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Выберите категорию помощи"
        label.font = .sfuitextRegular(size: 17)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var indicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.startAnimating()
        indicator.color = .leaf
        
        return indicator
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
        
        addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).inset(20)
            make.left.right.equalToSuperview().inset(20)
        }
                
        addSubview(mainCollectionView)
        mainCollectionView.snp.makeConstraints { make in
            make.top.equalTo(label).inset(40)
            make.left.right.equalToSuperview().inset(Int(.interitemSpacing))
            make.bottom.equalTo(safeAreaLayoutGuide)
        }
    }
    
    private func startActivityIndicator() {
        addSubview(indicator)
        indicator.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
