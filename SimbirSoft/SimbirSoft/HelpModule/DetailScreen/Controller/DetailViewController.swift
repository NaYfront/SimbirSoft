//
//  DetailViewController.swift
//  SimbirSoft
//
//  Created by NaYfront on 28.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    let event: Event
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        
        label.attributedText = toAttributedString(font: .officina(size: 21), foregroundColor: .blueGrey, textAlignment: .left, minimumLineHeight: 25, text: event.name)
        
        return label
    }()
    
    private lazy var dateView = UIView()
    
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

        label.attributedText = toAttributedString(font: .sfuitextMedium(size: 11), foregroundColor: .grey, textAlignment: .center, minimumLineHeight: nil, text: event.date)
        
        return label
    }()
    
    private lazy var companyLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        label.attributedText = toAttributedString(font: .sfuitextRegular(size: 11), foregroundColor: .charcoalGrey, textAlignment: .left, minimumLineHeight: 20, text: event.company)
        
        return label
    }()
    
    private lazy var addressView = UIView()
    
    private lazy var addressImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "iconNav")
        
        return imageView
    }()
    
    private lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        label.attributedText = toAttributedString(font: .sfuitextRegular(size: 15), foregroundColor: .charcoalGrey, textAlignment: .left, minimumLineHeight: nil, text: event.address)
        
        return label
    }()
    
    private lazy var phoneView = UIView()
    
    private lazy var phoneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "iconPhone")
        
        return imageView
    }()
    
    private lazy var phoneLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        label.attributedText = toAttributedString(font: .sfuitextRegular(size: 15), foregroundColor: .charcoalGrey, textAlignment: .left, minimumLineHeight: nil, text: event.phoneNumber)

        return label
    }()
    
    private lazy var mailView = UIView()
    
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

        label.attributedText = toAttributedString(font: .sfuitextRegular(size: 15), foregroundColor: .charcoalGrey, textAlignment: .left, minimumLineHeight: nil, text: "У вас есть вопросы?")
        
        return label
    }()
    
    private lazy var mailSecondLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left

        let myAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont.sfuitextRegular(size: 15), NSAttributedString.Key.foregroundColor: UIColor.leaf, NSAttributedString.Key.paragraphStyle: paragraphStyle, NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
        
        let attributedString = NSAttributedString(string: "Напишите нам", attributes: myAttribute)

        label.attributedText = attributedString
        
        return label
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
    
    private func toAttributedString(font: UIFont, foregroundColor: UIColor, textAlignment: NSTextAlignment, minimumLineHeight: CGFloat?, text: String) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = textAlignment
        
        if let minimumLineHeight = minimumLineHeight {
            paragraphStyle.minimumLineHeight = minimumLineHeight
        }

        let myAttribute = [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: foregroundColor, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        
        let attributedString = NSAttributedString(string: text, attributes: myAttribute)
        
        return attributedString
    }
    
    private func makeUI() {
        view.backgroundColor = .white
        
        addSubviews()
        
        nameLabel.snp.makeConstraints { make in
            make.top.left.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.right.equalTo(view.safeAreaLayoutGuide).inset(68)
        }
        
        configureDatePart()
        
        companyLabel.snp.makeConstraints { make in
            make.top.equalTo(dateView.snp.bottom).offset(10)
            make.left.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
        
        configureAddressPart()
        configurePhonePart()
        configureMailPart()
        
    }
    
    private func addSubviews() {
        view.addSubview(nameLabel)
        view.addSubview(dateView)
        
        dateView.addSubview(dateImageView)
        dateView.addSubview(dateLabel)
        
        view.addSubview(companyLabel)
        view.addSubview(addressView)
        
        addressView.addSubview(addressImageView)
        addressView.addSubview(addressLabel)
        
        view.addSubview(phoneView)
        
        phoneView.addSubview(phoneImageView)
        phoneView.addSubview(phoneLabel)
        
        view.addSubview(mailView)
        
        mailView.addSubview(mailImageView)
        mailView.addSubview(mailFirstLabel)
        mailView.addSubview(mailSecondLabel)
    }
    
    private func configureDatePart() {
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
            make.left.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.height.equalTo(dateLabel.snp.height)
            make.width.equalTo(dateLabel.snp.width).offset(24)
        }
    }
    
    private func configureAddressPart() {
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
            make.left.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.right.equalTo(view.safeAreaLayoutGuide).inset(60)
            make.height.equalTo(addressLabel.snp.height)
            make.width.equalTo(addressLabel.snp.width).offset(26)
        }
    }
    
    private func configurePhonePart() {
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
            make.left.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.right.equalTo(view.safeAreaLayoutGuide).inset(60)
            make.height.equalTo(phoneLabel.snp.height)
            make.width.equalTo(phoneLabel.snp.width).offset(26)
        }
    }
    
    private func configureMailPart() {
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
            make.left.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.right.equalTo(view.safeAreaLayoutGuide).inset(60)
            make.height.equalTo(mailFirstLabel.snp.height)
        }
    }
}
