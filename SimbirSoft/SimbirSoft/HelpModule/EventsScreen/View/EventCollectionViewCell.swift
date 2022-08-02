//
//  EventCollectionViewCell.swift
//  SimbirSoft
//
//  Created by NaYfront on 25.07.2022.
//

import UIKit
import SnapKit

class EventCollectionViewCell: UICollectionViewCell {
    static let identifier = "EventCollectionViewCell"
    
    lazy var mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    lazy var additionalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "bitmap")
        
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .toAttributedString(attributes: [UIFont.officina(size: 21), UIColor.blueGrey, NSMutableParagraphStyle(alignment: .center, minimumLineLenght: 25)], text: "text")
        
        return label
    }()
    
    lazy var heartImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "heart")
        
        return imageView
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .toAttributedString(attributes: [UIFont.sfuitextRegular(size: 15), UIColor.darkSlateBlue, NSMutableParagraphStyle(alignment: .center, minimumLineLenght: nil)], text: "text")
        
        return label
    }()
    
    lazy var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .leaf
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        return view
    }()
    
    lazy var dateView = UIView()
    
    lazy var dateImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "calendar")
        
        return imageView
    }()
    
    lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .toAttributedString(attributes: [UIFont.sfuitextMedium(size: 11), UIColor.white, NSMutableParagraphStyle(alignment: .center, minimumLineLenght: nil)], text: "text")
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        makeUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeUI() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 5
        
        addSubviews()
        
        configureMainImagePart()
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).inset(8)
            make.left.right.equalToSuperview()
        }
        
        heartImageView.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.left.right.equalToSuperview().inset(123)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(heartImageView.snp.bottom).offset(8)
            make.left.right.equalToSuperview().inset(23)
        }
        
        configureDatePart()
    }
    
    private func addSubviews() {
        contentView.addSubview(mainImageView)
 
        mainImageView.addSubview(additionalImageView)
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(heartImageView)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(greenView)

        greenView.addSubview(dateView)
        dateView.addSubview(dateImageView)
        dateView.addSubview(dateLabel)
    }
    
    private func configureMainImagePart() {
        mainImageView.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview().inset(4)
            make.height.equalTo(CGFloat.mainImageHeight)
            make.width.equalTo(CGFloat.mainImageWidth)
        }
        
        additionalImageView.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
        }
    }
    
    private func configureDatePart() {
        greenView.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(8)
            make.left.bottom.right.equalToSuperview()
        }
        
        dateView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        dateImageView.snp.makeConstraints { make in
            make.left.top.bottom.equalToSuperview()
            make.height.equalTo(CGFloat.dateImageHeight)
            make.width.equalTo(CGFloat.dateImageWidth)
        }

        dateLabel.snp.makeConstraints { make in
            make.right.top.bottom.equalToSuperview()
            make.left.equalTo(dateImageView.snp.right).offset(10)
        }
    }
}

private extension CGFloat {
    static let mainImageWidth = UIScreen.main.bounds.width - 24
    static let mainImageHeight = 231
    
    static let dateImageWidth = 14
    static let dateImageHeight = 13
}
