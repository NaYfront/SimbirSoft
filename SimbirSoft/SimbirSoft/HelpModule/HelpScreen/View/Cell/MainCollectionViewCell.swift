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
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        makeUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configuration
    func configure(with category: Category) {
        label.attributedText = .toAttributedString(
            attributes: [UIFont.officina(size: 17),
                         UIColor.lightOliveGreen,
                         NSMutableParagraphStyle(alignment: .center, minimumLineLength: 20)],
            text: category.name)
        
        imageView.image = UIImage(named: category.image)
        imageView.snp.makeConstraints { make in
            guard let image = imageView.image else { return }
            make.width.equalTo(image.size.width / 3)
            make.height.equalTo(image.size.height / 3)
        }
    }
    
    // MARK: - Private Functions
    private func makeUI() {
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
