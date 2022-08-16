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
        self.attributedText = .addTextToAttributedLabel(label: self, text: text)
    }
}
