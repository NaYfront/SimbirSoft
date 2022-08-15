//
//  UsersView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class UsersView: UIView {
    // MARK: - User Interface
    private lazy var usersLabel: UILabel = {
        let label = UILabel()
        
        label.attributedText = .toAttributedString(
            attributes: [UIFont.sfuitextRegular(size: 13),
                         UIColor.grey,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: nil)],
            text: "+102")
        
        return label
    }()
    
    private let usersPhotosView = UIView()
    
    // MARK: - Initializers
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Functions
    private func addSubviews() {
        self.addSubview(usersLabel)
        self.addSubview(usersPhotosView)
    }
    
    private func setupUI() {
        self.backgroundColor = .lightGrey
        addSubviews()
        
        self.snp.makeConstraints { make in
            make.height.equalTo(68)
        }
        
        usersPhotosView.snp.makeConstraints { make in
            make.height.equalTo(36)
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(20)
        }
        
        let images = [#imageLiteral(resourceName: "photo1"), #imageLiteral(resourceName: "photo2"), #imageLiteral(resourceName: "photo3"), #imageLiteral(resourceName: "photo4"), #imageLiteral(resourceName: "photo5")]
        var leftConstraint = 0
        
        for index in 0..<5 {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = images[index]
            usersPhotosView.addSubview(imageView)
            
            imageView.snp.makeConstraints { make in
                make.height.equalTo(36)
                make.width.equalTo(36)
                make.left.equalToSuperview().offset(leftConstraint)
            }
            
            leftConstraint += 36
        }
        
        usersLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(usersPhotosView.snp.right).offset(190)
        }
    }
}
