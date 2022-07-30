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
        
        let attributedString = NSMutableAttributedString(string: text, attributes: myAttribute)
                
        return attributedString
    }

    // Улучшенный вариант
    
    static func toAttributedString(attributes: [NSObject], text: String) -> NSAttributedString {

        let convertedAttributes = NSAttributedString.toAttributes(attributes: attributes)
        
        let attributedString = NSMutableAttributedString(string: text)
        let range = text.range(of: text)
        let convertedRange = NSRange(range!, in: text)

        for (key, value) in convertedAttributes {
            attributedString.addAttribute(key, value: value, range: convertedRange)
        }

        return attributedString
    }
    
    private static func toAttributes(attributes: [NSObject]) -> [NSAttributedString.Key: Any] {
        var convertedAttributes: [NSAttributedString.Key: Any] = [:]
        
        for attribute in attributes {
            switch attribute {
            case is UIFont:
                convertedAttributes[NSAttributedString.Key.font] = attribute
            case is UIColor:
                convertedAttributes[NSAttributedString.Key.foregroundColor] = attribute
            case is NSMutableParagraphStyle:
                convertedAttributes[NSAttributedString.Key.paragraphStyle] = attribute
            case is NSNumber:
                convertedAttributes[NSAttributedString.Key.underlineStyle] = attribute
            default:
                print("something is wrong")
            }
        }
        
        return convertedAttributes
    }
}
