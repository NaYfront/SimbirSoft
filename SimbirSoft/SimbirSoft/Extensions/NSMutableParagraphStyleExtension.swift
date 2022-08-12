//
//  NSMutableParagraphStyleExtension.swift
//  SimbirSoft
//
//  Created by NaYfront on 30.07.2022.
//

import Foundation
import UIKit

extension NSMutableParagraphStyle {
    convenience init(alignment: NSTextAlignment?, minimumLineLength: CGFloat?) {
        self.init()
        
        if let alignment = alignment {
            self.alignment = alignment
        }
        
        if let minimumLineHeight = minimumLineLength {
            self.minimumLineHeight = minimumLineHeight
        }
    }
}
