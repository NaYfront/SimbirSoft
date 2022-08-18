//
//  AddressView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class AddressView: UIView {
    // MARK: - User Interface
    lazy var addressImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "iconNav")
        
        return imageView
    }()
    
    lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .addAttributes(
            attributes: [UIFont.sfuitextRegular(size: 15),
                         UIColor.charcoalGrey,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: nil)])
        
        return label
    }()
    
    // MARK: - Initializers
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Functions
    func setup(text: String) {
        addressLabel.addAttributedText(text: text)
    }
    
    // MARK: - Private Functions
    private func addSubviews() {
        self.addSubview(addressImageView)
        self.addSubview(addressLabel)
    }
    
    private func setupUI() {
        addSubviews()
        
        addressImageView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(3)
            make.height.width.equalTo(16)
        }

        addressLabel.snp.makeConstraints { make in
            make.right.top.bottom.equalToSuperview()
            make.left.equalTo(addressImageView.snp.right).offset(10)
        }

        self.snp.makeConstraints { make in
            make.height.equalTo(addressLabel)
            make.width.equalTo(addressLabel).offset(26)
        }
    }
}