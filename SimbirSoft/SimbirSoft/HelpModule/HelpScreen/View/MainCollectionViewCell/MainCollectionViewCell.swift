//
//  cellCollectionViewCell.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.07.2022.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    static let identifier = "MainCollectionViewCell"
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let label: UILabel = {
        let label = UILabel()
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = 20
        paragraphStyle.alignment = .center
        
        let myAttribute = [NSAttributedString.Key.font: UIFont.officina(size: 17), NSAttributedString.Key.foregroundColor: UIColor.lightOliveGreen, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSAttributedString(string: "", attributes: myAttribute)
        
        label.attributedText = attributedString
        
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
