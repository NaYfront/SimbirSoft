//
//  NSAttributedStringExtension.swift
//  SimbirSoft
//
//  Created by NaYfront on 29.07.2022.
//

import Foundation
import UIKit

extension NSAttributedString {
    static func toAttributedString(font: UIFont, foregroundColor: UIColor, textAlignment: NSTextAlignment, minimumLineHeight: CGFloat?, text: String) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = textAlignment
        
        if let minimumLineHeight = minimumLineHeight {
            paragraphStyle.minimumLineHeight = minimumLineHeight
        }

        let myAttribute = [NSAttributedString.Key.font: font, NSAttributedString.Key.foregroundColor: foregroundColor, NSAttributedString.Key.paragraphStyle: paragraphStyle]
        
        let attributedString = NSAttributedString(string: text, attributes: myAttribute)
        
        return attributedString
    }
}
