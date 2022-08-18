//
//  ButtonsView.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.08.2022.
//

import UIKit
import SnapKit

class ButtonsView: UIView {
    // MARK: - Initializers
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Functions
    private func setupUI() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.whiteTwo.cgColor
        
        let images = [#imageLiteral(resourceName: "shirt"), #imageLiteral(resourceName: "hands"), #imageLiteral(resourceName: "tools"), #imageLiteral(resourceName: "coins")]
        let strings = ["Помочь вещами", "Стать волонтером", "Проф. помощь", "Помочь деньгами"]
        
        let constraint = (UIScreen.main.bounds.width - 264) / 8
        var leftConstraint = constraint
        
        for index in 0..<4 {
            var configuration = UIButton.Configuration.plain()
            configuration.imagePlacement = .top
            let button = UIButton(configuration: configuration, primaryAction: nil)
            
            button.setAttributedTitle(.toAttributedString(
                attributes: [UIFont.sfuitextMedium(size: 10),
                             UIColor.warmGrey,
                             NSMutableParagraphStyle(alignment: .center, minimumLineLength: nil)],
                text: strings[index]),
                                      for: .normal)
            button.setImage(images[index], for: .normal)
            
            addSubview(button)
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
                
                addSubview(imageView)
                imageView.snp.makeConstraints { make in
                    make.height.equalTo(70)
                    make.width.equalTo(1)
                    make.left.equalTo(button.snp.right).offset(constraint)
                }
            }
            
            leftConstraint += 66 + constraint * 2
        }
    }
}
