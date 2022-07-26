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
    
    let imageWidth = UIScreen.main.bounds.width - 24
    
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
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = 25
        paragraphStyle.alignment = .center
        
        let myAttribute = [NSAttributedString.Key.font: UIFont.officina(size: 21), NSAttributedString.Key.foregroundColor: UIColor.blueGrey, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSAttributedString(string: "123", attributes: myAttribute)
        
        label.attributedText = NSAttributedString(attributedString: attributedString)
        
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
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        let myAttribute = [NSAttributedString.Key.font: UIFont.sfuitextRegular(size: 15), NSAttributedString.Key.foregroundColor: UIColor.darkSlateBlue, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSAttributedString(string: "123", attributes: myAttribute)
        
        label.attributedText = NSAttributedString(attributedString: attributedString)

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
    
    lazy var emptyView: UIView = {
        let view = UIView()
        
        return view
    }()
    
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
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        
        let myAttribute = [NSAttributedString.Key.font: UIFont.sfuitextMedium(size: 11), NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSAttributedString(string: "123", attributes: myAttribute)
        
        label.attributedText = NSAttributedString(attributedString: attributedString)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 5

        contentView.addSubview(mainImageView)
        mainImageView.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview().inset(4)
            make.height.equalTo(231)
            make.width.equalTo(imageWidth)
        }
        
        mainImageView.addSubview(additionalImageView)
        additionalImageView.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
        }
        
        contentView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).inset(8)
            make.left.right.equalToSuperview()
        }
        
        contentView.addSubview(heartImageView)
        heartImageView.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.left.right.equalToSuperview().inset(123)
        }
        
        contentView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(heartImageView.snp.bottom).offset(8)
            make.left.right.equalToSuperview().inset(23)
        }
        
        contentView.addSubview(greenView)
        greenView.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(8)
            make.left.bottom.right.equalToSuperview()
        }
        
        greenView.addSubview(emptyView)
        
        emptyView.addSubview(dateImageView)
        dateImageView.snp.makeConstraints { make in
            make.height.equalTo(15)
            make.width.equalTo(15)
        }

        emptyView.addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.height.equalTo(15)
            make.left.equalTo(dateImageView.snp.right).offset(10)
        }
        
        emptyView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(13)
            make.width.equalTo(dateLabel.snp.width).offset(25)
        }
    }
}
