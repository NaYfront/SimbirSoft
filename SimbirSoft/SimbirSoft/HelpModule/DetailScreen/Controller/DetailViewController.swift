//
//  DetailViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 28.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    let event: Event
    
    private let infoAttributes: [NSObject] = [UIFont.sfuitextRegular(size: 15), UIColor.charcoalGrey, NSMutableParagraphStyle(alignment: .left, minimumLineLenght: nil)]
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.bounces = true
        scrollView.contentSize = self.view.frame.size
        
        return scrollView
    }()
    
    private lazy var buttonsView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.whiteTwo.cgColor
        
        return view
    }()
    
    private lazy var containerView = UIView()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .toAttributedString(attributes: [UIFont.officina(size: 21), UIColor.blueGrey, NSMutableParagraphStyle(alignment: .left, minimumLineLenght: 25)], text: event.name)
        
        return label
    }()
    
    private lazy var dateView = UIView()
    
    private lazy var companyLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = .toAttributedString(attributes: [UIFont.sfuitextRegular(size: 11), UIColor.charcoalGrey, NSMutableParagraphStyle(alignment: .left, minimumLineLenght: 20)], text: event.company)
        
        return label
    }()
    
    private lazy var addressView = UIView()
    private lazy var phoneView = UIView()
    private lazy var mailView = UIView()
    
    private lazy var imageSetView = UIView()
    
    private lazy var detailDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        label.attributedText = .toAttributedString(attributes: [UIFont.sfuitextRegular(size: 15), UIColor.charcoalGrey, NSMutableParagraphStyle(alignment: .left, minimumLineLenght: nil)], text: event.detailDescription)
        
        return label
    }()
    
    private lazy var siteLabel: UILabel = {
        let label = UILabel()
        
        label.attributedText = .toAttributedString(attributes: [UIFont.sfuitextRegular(size: 15), UIColor.leaf, NSMutableParagraphStyle(alignment: .left, minimumLineLenght: nil), NSNumber(1)], text: "Перейти на сайт организации")
        
        return label
    }()
    
    private lazy var usersView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGrey
        
        return view
    }()
    
    init(event: Event) {
        self.event = event
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
    }
    
    private func makeUI() {
        view.backgroundColor = .white
        self.tabBarController?.tabBar.isHidden = true
        
        let shareButton = UIBarButtonItem(image: #imageLiteral(resourceName: "iconShare"), style: .plain, target: self, action: nil)
        shareButton.tintColor = .white

        navigationItem.rightBarButtonItem = shareButton
        
        addSubviews()
        
        configureButtonsPart()
        
        scrollView.snp.makeConstraints { make in
            make.top.left.right.equalTo(view.safeAreaLayoutGuide)
            make.bottom.equalTo(buttonsView.snp.top)
        }
        
        containerView.snp.makeConstraints { (make) in
            make.top.bottom.equalTo(scrollView)
            make.left.right.equalTo(view)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(68)
        }
        
        configureDatePart()
        
        companyLabel.snp.makeConstraints { make in
            make.top.equalTo(dateView.snp.bottom).offset(10)
            make.left.equalToSuperview().inset(20)
        }
        
        configureAddressPart()
        configurePhonePart()
        configureMailPart()
        configureImageSetPart()
        
        detailDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(imageSetView.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(20)
        }
        
        siteLabel.snp.makeConstraints { make in
            make.top.equalTo(detailDescriptionLabel.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(20)
        }
        
        configureUsersView()
    }
    
    private func addSubviews() {
        view.addSubview(scrollView)
        view.addSubview(buttonsView)
        
        scrollView.addSubview(containerView)
        
        containerView.addSubview(nameLabel)
        containerView.addSubview(dateView)
        
        containerView.addSubview(companyLabel)
        
        containerView.addSubview(addressView)
        containerView.addSubview(phoneView)
        containerView.addSubview(mailView)
        
        containerView.addSubview(imageSetView)
        
        containerView.addSubview(detailDescriptionLabel)
        containerView.addSubview(siteLabel)
        containerView.addSubview(usersView)
    }
    
    private func configureButtonsPart() {
        buttonsView.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
            make.height.equalTo(70)
        }
        
        let images = [#imageLiteral(resourceName: "shirt"), #imageLiteral(resourceName: "hands"), #imageLiteral(resourceName: "tools"), #imageLiteral(resourceName: "coins")]
        let strings = ["Помочь вещами", "Стать волонтером", "Проф. помощь", "Помочь деньгами"]
        
        let constraint = (UIScreen.main.bounds.width - 264) / 8
        var leftConstraint = constraint
        
        for index in 0..<4 {
            var configuration = UIButton.Configuration.plain()
            configuration.imagePlacement = .top
            let button = UIButton(configuration: configuration, primaryAction: nil)
            
            button.setAttributedTitle(.toAttributedString(attributes: [UIFont.sfuitextMedium(size: 10), UIColor.warmGrey, NSMutableParagraphStyle(alignment: .center, minimumLineLenght: nil)], text: strings[index]), for: .normal)
            button.setImage(images[index], for: .normal)
            
            buttonsView.addSubview(button)
            button.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.width.equalTo(66)
                make.height.equalTo(60)
                make.left.equalToSuperview().inset(leftConstraint)
            }
            
            button.titleLabel!.snp.makeConstraints { make in
                make.left.bottom.right.equalToSuperview()
                make.height.equalTo(24)
            }
            
            button.imageView!.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.bottom.equalTo(button.titleLabel!).inset(30)
            }
            
            if index != 3 {
                let imageView = UIImageView()
                imageView.image = #imageLiteral(resourceName: "separator")
                
                buttonsView.addSubview(imageView)
                imageView.snp.makeConstraints { make in
                    make.height.equalTo(70)
                    make.width.equalTo(1)
                    make.left.equalTo(button.snp.right).offset(constraint)
                }
            }
            
            leftConstraint += 66 + constraint * 2
        }
    }
    
    private func configureDatePart() {
        lazy var dateImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = #imageLiteral(resourceName: "greyCalendar")
            
            return imageView
        }()
        lazy var dateLabel: UILabel = {
            let label = UILabel()
            label.numberOfLines = 0
            
            label.attributedText = .toAttributedString(attributes: [UIFont.sfuitextMedium(size: 11), UIColor.grey, NSMutableParagraphStyle(alignment: .left, minimumLineLenght: nil)], text: event.date)
            
            return label
        }()
        
        dateView.addSubview(dateImageView)
        dateView.addSubview(dateLabel)
        
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
        
        dateView.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(17)
            make.left.equalToSuperview().inset(20)
            make.height.equalTo(dateLabel)
            make.width.equalTo(dateLabel).offset(24)
        }
    }
    
    private func configureAddressPart() {
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

            label.attributedText = .toAttributedString(attributes: infoAttributes, text: event.address)
            
            return label
        }()
        
        addressView.addSubview(addressImageView)
        addressView.addSubview(addressLabel)
        
        addressImageView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(3)
            make.height.width.equalTo(16)
        }

        addressLabel.snp.makeConstraints { make in
            make.right.top.bottom.equalToSuperview()
            make.left.equalTo(addressImageView.snp.right).offset(10)
        }

        addressView.snp.makeConstraints { make in
            make.top.equalTo(companyLabel.snp.bottom).offset(15)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(60)
            make.height.equalTo(addressLabel)
            make.width.equalTo(addressLabel).offset(26)
        }
    }
    
    private func configurePhonePart() {
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

            label.attributedText = .toAttributedString(attributes: infoAttributes, text: event.phoneNumber)

            return label
        }()
        
        phoneView.addSubview(phoneImageView)
        phoneView.addSubview(phoneLabel)
        
        phoneImageView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalToSuperview().offset(3)
            make.height.width.equalTo(16)
        }

        phoneLabel.snp.makeConstraints { make in
            make.right.top.bottom.equalToSuperview()
            make.left.equalTo(phoneImageView.snp.right).offset(10)
        }

        phoneView.snp.makeConstraints { make in
            make.top.equalTo(addressView.snp.bottom).offset(15)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(60)
            make.height.equalTo(phoneLabel)
            make.width.equalTo(phoneLabel).offset(26)
        }
    }
    
    private func configureMailPart() {
        lazy var mailImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = #imageLiteral(resourceName: "mail")
            
            return imageView
        }()
        lazy var mailFirstLabel: UILabel = {
            let label = UILabel()
            label.numberOfLines = 0

            label.attributedText = .toAttributedString(attributes: infoAttributes, text: "У вас есть вопросы?")
            
            return label
        }()
        lazy var mailSecondLabel: UILabel = {
            let label = UILabel()
            label.numberOfLines = 0
            
            label.attributedText = .toAttributedString(attributes: [UIFont.sfuitextRegular(size: 15), UIColor.leaf, NSMutableParagraphStyle(alignment: .left, minimumLineLenght: nil), NSNumber(1)], text: "Напишите нам")
            
            return label
        }()
        
        mailView.addSubview(mailImageView)
        mailView.addSubview(mailFirstLabel)
        mailView.addSubview(mailSecondLabel)
        
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

        mailView.snp.makeConstraints { make in
            make.top.equalTo(phoneView.snp.bottom).offset(15)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(60)
            make.height.equalTo(mailFirstLabel)
        }
    }
    
    private func configureImageSetPart() {
        lazy var imageFirst: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = UIImage(named: event.detailImages[0])
            
            return imageView
        }()

        lazy var smallImageSetView = UIView()

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
        
        imageSetView.addSubview(imageFirst)
        imageSetView.addSubview(smallImageSetView)
        smallImageSetView.addSubview(imageSecond)
        smallImageSetView.addSubview(imageThird)
        
        imageSetView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(20)
            make.height.equalTo(168)
            make.top.equalTo(mailView.snp.bottom).offset(16)
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
    
    private func configureUsersView() {
        usersView.snp.makeConstraints { make in
            make.top.equalTo(siteLabel.snp.bottom).offset(32)
            make.height.equalTo(68)
            make.left.bottom.right.equalToSuperview()
        }
        
        let usersPhotosView = UIView()
        usersView.addSubview(usersPhotosView)
        usersPhotosView.snp.makeConstraints { make in
            make.height.equalTo(36)
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(20)
        }
        
        let images = [#imageLiteral(resourceName: "photo1"), #imageLiteral(resourceName: "photo2"), #imageLiteral(resourceName: "photo3"), #imageLiteral(resourceName: "photo4"), #imageLiteral(resourceName: "photo5")]
        var leftConstraint = 0
        
        for index in 0..<5 {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = images[index]
            usersPhotosView.addSubview(imageView)
            
            imageView.snp.makeConstraints { make in
                make.height.equalTo(36)
                make.width.equalTo(36)
                make.left.equalToSuperview().offset(leftConstraint)
            }
            
            leftConstraint += 36
        }
        
        lazy var usersLabel: UILabel = {
            let label = UILabel()
            
            label.attributedText = .toAttributedString(attributes: [UIFont.sfuitextRegular(size: 13), UIColor.grey, NSMutableParagraphStyle(alignment: .left, minimumLineLenght: nil)], text: "+102")
            
            return label
        }()
        usersView.addSubview(usersLabel)
        
        usersLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(usersPhotosView.snp.right).offset(190)
        }
    }
}
