//
//  UIFontExtension.swift
//  SimbirSoft
//
//  Created by NaYfront on 24.07.2022.
//

import Foundation
import UIKit
import UniformTypeIdentifiers

extension UIFont {
    static func officina(size: CGFloat) -> UIFont {
        return CustomFont.officina.chooseSize(size: size)
    }
    static func sfuitextRegular(size: CGFloat) -> UIFont {
        return CustomFont.sfuitextRegular.chooseSize(size: size)
    }
    static func sfuitextMedium(size: CGFloat) -> UIFont {
        return CustomFont.sfuitextMedium.chooseSize(size: size)
    }
}

private enum CustomFont {
    case officina
    case sfuitextRegular
    case sfuitextMedium
    
    func chooseSize(size: CGFloat) -> UIFont {
        switch self {
        case .officina:
            return UIFont(name: "OfficinaSansExtraBoldSCC", size: size) ?? UIFont()
        case .sfuitextRegular:
            return UIFont(name: "SFUIText-Regular", size: size) ?? UIFont()
        case .sfuitextMedium:
            return UIFont(name: "SFUIText-Medium", size: size) ?? UIFont()
        }
    }
}
