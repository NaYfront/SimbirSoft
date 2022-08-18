//
//  MailView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class MailView: UIView {
    // MARK: - User Interface
    private lazy var mailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "mail")
        
        return imageView
    }()
    
    private lazy var mailFirstLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        label.attributedText = .toAttributedString(
            attributes: [UIFont.sfuitextRegular(size: 15),
                         UIColor.charcoalGrey,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: nil)],
            text: "У вас есть вопросы?")
        
        return label
    }()
    
    private lazy var mailSecondLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .toAttributedString(
            attributes: [UIFont.sfuitextRegular(size: 15),
                         UIColor.leaf,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: nil),
                         NSNumber(1)],
            text: "Напишите нам")
        
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
    
    // MARK: - Private Functions
    private func addSubviews() {
        addSubview(mailImageView)
        addSubview(mailFirstLabel)
        addSubview(mailSecondLabel)
    }
    
    private func setupUI() {
        addSubviews()
        
        mailImageView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(4)
            make.height.equalTo(12)
            make.width.equalTo(18)
        }

        mailFirstLabel.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.width.equalTo(152)
            make.left.equalTo(mailImageView.snp.right).offset(9)
        }
        
        mailSecondLabel.snp.makeConstraints { make in
            make.right.top.bottom.equalToSuperview()
            make.left.equalTo(mailFirstLabel.snp.right).offset(1)
        }

        self.snp.makeConstraints { make in
            make.height.equalTo(mailFirstLabel)
        }
    }
}
