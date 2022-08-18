//
//  DetailView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class DetailView: UIView {
    // MARK: - User Interface
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.bounces = true
        scrollView.contentSize = self.frame.size
        
        return scrollView
    }()
    
    private lazy var buttonsView = ButtonsView()
    private lazy var usersView = UsersView()
    private lazy var dateView = DateView()
    private lazy var infoView = InfoView()
    private lazy var imageSetView = ImageSetView()
    private lazy var containerView = UIView()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .addAttributes(
            attributes: [UIFont.officina(size: 21),
                         UIColor.blueGrey,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: 25)])
        
        return label
    }()
    
    private lazy var companyLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .addAttributes(
            attributes: [UIFont.sfuitextRegular(size: 11),
                         UIColor.charcoalGrey,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: 20)])
        
        return label
    }()
    
    private lazy var detailDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        label.attributedText = .addAttributes(
            attributes: [UIFont.sfuitextRegular(size: 15),
                         UIColor.charcoalGrey,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: nil)])
        
        return label
    }()
    
    private lazy var siteLabel: UILabel = {
        let label = UILabel()
        
        label.attributedText = .toAttributedString(
            attributes: [UIFont.sfuitextRegular(size: 15),
                         UIColor.leaf,
                         NSMutableParagraphStyle(alignment: .left, minimumLineLength: nil),
                         NSNumber(1)],
            text: "Перейти на сайт организации")
        
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
        addSubview(scrollView)
        addSubview(buttonsView)
        
        scrollView.addSubview(containerView)
        
        containerView.addSubview(nameLabel)
        containerView.addSubview(dateView)
        containerView.addSubview(companyLabel)
        containerView.addSubview(infoView)
        containerView.addSubview(imageSetView)
        containerView.addSubview(detailDescriptionLabel)
        containerView.addSubview(siteLabel)
        containerView.addSubview(usersView)
    }
    
    private func setupUI() {
        backgroundColor = .white
        
        addSubviews()
        
        scrollView.snp.makeConstraints { make in
            make.top.left.right.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalTo(buttonsView.snp.top)
        }
        
        buttonsView.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
            make.height.equalTo(70)
        }
        
        containerView.snp.makeConstraints { (make) in
            make.top.bottom.equalTo(scrollView)
            make.left.right.equalTo(self)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(68)
        }
        
        dateView.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(17)
            make.left.equalToSuperview().inset(20)
        }
        
        companyLabel.snp.makeConstraints { make in
            make.top.equalTo(dateView.snp.bottom).offset(10)
            make.left.equalToSuperview().inset(20)
        }
        
        infoView.snp.makeConstraints { make in
            make.top.equalTo(companyLabel.snp.bottom).offset(15)
        }
        
        imageSetView.snp.makeConstraints { make in
            make.top.equalTo(infoView.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(20)
        }
        
        detailDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(imageSetView.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(20)
        }
        
        siteLabel.snp.makeConstraints { make in
            make.top.equalTo(detailDescriptionLabel.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(20)
        }
        
        usersView.snp.makeConstraints { make in
            make.top.equalTo(siteLabel.snp.bottom).offset(32)
            make.left.bottom.right.equalToSuperview()
        }
    }
}

extension DetailView {
    func setupViews(event: Event) {
        nameLabel.addAttributedText(text: event.name)
        companyLabel.addAttributedText(text: event.company)
        detailDescriptionLabel.addAttributedText(text: event.detailDescription)
        
        dateView.setup(text: event.date)
        infoView.setup(address: event.address, phoneNumber: event.phoneNumber)
        imageSetView.setup(images: event.detailImages)
    }
}
