//
//  NSMutableParagraphStyleExtension.swift
//  SimbirSoft
//
//  Created by NaYfront on 30.07.2022.
//

import Foundation
import UIKit

extension NSMutableParagraphStyle {
    convenience init(alignment: NSTextAlignment?, minimumLineLenght: CGFloat?) {
        self.init()
        
        if let alignment = alignment {
            self.alignment = alignment
        }
        
        if let minimumLineHeight = minimumLineLenght {
            self.minimumLineHeight = minimumLineHeight
        }
    }
}
