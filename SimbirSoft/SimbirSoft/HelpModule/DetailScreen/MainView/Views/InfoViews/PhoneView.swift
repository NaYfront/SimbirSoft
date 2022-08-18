//
//  PhoneView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class PhoneView: UIView {
    // MARK: - User Interface
    lazy var phoneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "iconPhone")
        
        return imageView
    }()
    
    lazy var phoneLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        label.attributedText = .addAttributes(
            attributes: [UIFont.sfuitextRegular(size: 15),
                         UIColor.charcoalGrey,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: nil)])

        return label
    }()
    
    // MARK: - Public Functions
    func setup(text: String) {
        phoneLabel.addAttributedText(text: text)
    }
    
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
        self.addSubview(phoneImageView)
        self.addSubview(phoneLabel)
    }
    
    private func setupUI() {
        addSubviews()
        
        phoneImageView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(3)
            make.height.width.equalTo(16)
        }

        phoneLabel.snp.makeConstraints { make in
            make.right.top.bottom.equalToSuperview()
            make.left.equalTo(phoneImageView.snp.right).offset(10)
        }

        self.snp.makeConstraints { make in
            make.height.equalTo(phoneLabel)
            make.width.equalTo(phoneLabel).offset(26)
        }
    }
}
