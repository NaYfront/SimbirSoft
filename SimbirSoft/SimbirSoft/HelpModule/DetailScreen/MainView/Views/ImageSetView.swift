//
//  ImageSetView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class ImageSetView: UIView {
    // MARK: - Private Properties
    private let event: Event
    
    // MARK: - User Interface
    lazy var smallImageSetView = UIView()
    
    lazy var imageFirst: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: event.detailImages[0])
        
        return imageView
    }()

    lazy var imageSecond: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: event.detailImages[1])
        
        return imageView
    }()
    
    lazy var imageThird: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: event.detailImages[2])
        
        return imageView
    }()
    
    // MARK: - Initializers
    init(event: Event) {
        self.event = event
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Functions
    private func addSubviews() {
        self.addSubview(imageFirst)
        self.addSubview(smallImageSetView)
        smallImageSetView.addSubview(imageSecond)
        smallImageSetView.addSubview(imageThird)
    }
    
    private func setupUI() {
        addSubviews()
        
        self.snp.makeConstraints { make in
            make.height.equalTo(168)
        }
        
        imageFirst.snp.makeConstraints { make in
            make.top.left.bottom.equalToSuperview()
            make.width.equalTo(222)
        }
        
        smallImageSetView.snp.makeConstraints { make in
            make.top.right.bottom.equalToSuperview()
            make.left.equalTo(imageFirst.snp.right).offset(10)
        }
        
        imageSecond.snp.makeConstraints { make in
            make.height.equalTo(79)
            make.width.equalTo(103)
            make.top.left.right.equalToSuperview()
        }
        
        imageThird.snp.makeConstraints { make in
            make.height.equalTo(79)
            make.width.equalTo(103)
            make.top.equalTo(imageSecond.snp.bottom).offset(10)
            make.left.right.equalToSuperview()
        }
    }
}
