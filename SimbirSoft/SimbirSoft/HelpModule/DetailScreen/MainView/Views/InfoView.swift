//
//  InfoView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class InfoView: UIView {
    // MARK: - User Interface
    private lazy var addressView = AddressView()
    private lazy var phoneView = PhoneView()
    private lazy var mailView = MailView()
    
    // MARK: - Initializers
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        addSubview(addressView)
        addSubview(phoneView)
        addSubview(mailView)
    }
    
    private func setupUI() {
        addSubviews()
        
        addressView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(60)
        }
        
        phoneView.snp.makeConstraints { make in
            make.top.equalTo(addressView.snp.bottom).offset(15)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(60)
        }
        
        mailView.snp.makeConstraints { make in
            make.top.equalTo(phoneView.snp.bottom).offset(15)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(60)
        }
        
        self.snp.makeConstraints { make in
            make.height.equalTo(120)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
    }
}

extension InfoView {
    func setup(address: String, phoneNumber: String) {
        addressView.setup(text: address)
        phoneView.setup(text: phoneNumber)
    }
}
