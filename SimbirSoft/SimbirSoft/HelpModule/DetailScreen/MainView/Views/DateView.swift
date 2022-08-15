//
//  DateView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class DateView: UIView {
    // MARK: - Private Properties
    private let event: Event
    
    // MARK: - User Interface
    private lazy var dateImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "greyCalendar")
        
        return imageView
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .toAttributedString(
            attributes: [UIFont.sfuitextMedium(size: 11),
                         UIColor.grey,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: nil)],
            text: event.date)
        
        return label
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
        self.addSubview(dateImageView)
        self.addSubview(dateLabel)
    }
    
    private func setupUI() {
        addSubviews()
        
        dateImageView.snp.makeConstraints { make in
            make.left.top.bottom.equalToSuperview()
            make.height.equalTo(13)
            make.width.equalTo(14)
        }

        dateLabel.snp.makeConstraints { make in
            make.right.top.bottom.equalToSuperview()
            make.height.equalTo(13)
            make.left.equalTo(dateImageView.snp.right).offset(10)
        }
        
        self.snp.makeConstraints { make in
            make.height.equalTo(dateLabel)
            make.width.equalTo(dateLabel).offset(24)
        }
    }
}
