//
//  Enums.swift
//  SimbirSoft
//
//  Created by NaYfront on 18.07.2022.
//

import Foundation
import UIKit

enum CustomColor {
    static let leaf = UIColor(named: "leaf") ?? .white
    static let lightOliveGreen = UIColor(named: "light olive green") ?? .white
}

enum CustomFont {
    case officina
    case sfuitext
    
    func font(size: CGFloat) -> UIFont {
        switch self {
        case .officina:
            return UIFont(name: "OfficinaSansExtraBoldSCC", size: size) ?? UIFont()
        case .sfuitext:
            return UIFont(name: "SFUIText-Regular", size: size) ?? UIFont()
        }
    }
}
