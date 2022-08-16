//
//  NSAttributedStringExtension.swift
//  SimbirSoft
//
//  Created by NaYfront on 29.07.2022.
//

import Foundation
import UIKit

extension NSAttributedString {
    static func toAttributedString(attributes: [NSObject], text: String) -> NSAttributedString {

        let convertedAttributes = NSAttributedString.toAttributes(attributes: attributes)
        let attributedString = NSMutableAttributedString(string: text, attributes: convertedAttributes)

        return attributedString
    }
    
    static func addAttributes(attributes: [NSObject]) -> NSAttributedString {
        let convertedAttributes = NSAttributedString.toAttributes(attributes: attributes)
        let attributedString = NSMutableAttributedString(string: "string", attributes: convertedAttributes)

        return attributedString
    }
    
    static func addTextToAttributedLabel(label: UILabel, text: String) -> NSAttributedString {
        return NSAttributedString(string: text, attributes: label.attributedText?.attributes(at: 0, effectiveRange: nil))
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
