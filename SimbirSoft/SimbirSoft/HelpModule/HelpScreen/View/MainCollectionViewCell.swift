//
//  cellCollectionViewCell.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.07.2022.
//

import UIKit
import SnapKit

class MainCollectionViewCell: UICollectionViewCell {    
    // MARK: - User Interface
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Functions
    private func configure() {
        contentView.backgroundColor = .lightGrey
        
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(8)
            make.bottom.equalToSuperview().inset(10)
        }
        
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.left.equalTo(contentView.snp.left).inset(30)
            make.center.equalTo(self.contentView.snp.center)
        }
    }
}
