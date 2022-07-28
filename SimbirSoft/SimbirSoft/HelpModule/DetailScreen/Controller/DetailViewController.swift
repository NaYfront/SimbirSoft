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
        label.numberOfLines = 2
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.minimumLineHeight = 25
        paragraphStyle.alignment = .left
        
        let myAttribute = [NSAttributedString.Key.font: UIFont.officina(size: 21), NSAttributedString.Key.foregroundColor: UIColor.blueGrey, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSAttributedString(string: event.name, attributes: myAttribute)
        
        label.attributedText = NSAttributedString(attributedString: attributedString)
        
        return label
    }()
    
    private lazy var dateView: UIView = {
        let view = UIView()
        
        return view
    }()
    
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

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center

        let myAttribute = [NSAttributedString.Key.font: UIFont.sfuitextMedium(size: 11), NSAttributedString.Key.foregroundColor: UIColor.grey, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSAttributedString(string: event.date, attributes: myAttribute)

        label.attributedText = NSAttributedString(attributedString: attributedString)

        return label
    }()
    
    private lazy var companyLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left

        let myAttribute = [NSAttributedString.Key.font: UIFont.sfuitextRegular(size: 11), NSAttributedString.Key.foregroundColor: UIColor.charcoalGrey, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        let attributedString = NSAttributedString(string: event.company, attributes: myAttribute)

        label.attributedText = NSAttributedString(attributedString: attributedString)

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
    
    private func makeUI() {
        view.backgroundColor = .white
        
        view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.left.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.right.equalTo(view.safeAreaLayoutGuide).inset(68)
        }
        
        view.addSubview(dateView)
        
        dateView.addSubview(dateImageView)
        dateImageView.snp.makeConstraints { make in
            make.height.equalTo(13)
            make.width.equalTo(14)
        }

        dateView.addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
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
}
