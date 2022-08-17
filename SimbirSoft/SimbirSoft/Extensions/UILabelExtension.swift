//
//  UILabelExtension.swift
//  SimbirSoft
//
//  Created by NaYfront on 17.08.2022.
//

import Foundation
import UIKit

extension UILabel {
    func addAttributedText(text: String) {
        self.attributedText = NSAttributedString(string: text, attributes: self.attributedText?.attributes(at: 0, effectiveRange: nil))
    }
}
