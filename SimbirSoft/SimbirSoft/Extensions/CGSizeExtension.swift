//
//  CGSizeExtension.swift
//  SimbirSoft
//
//  Created by NaYfront on 18.08.2022.
//

import UIKit

extension CGSize {
    static let cellSize = { () -> CGSize in
        if UIScreen.main.bounds.width < 375 {
            return smallCellSize
        } else {
            return CGSize(width: 174, height: 160)
        }
    }()
    
    static let smallCellSize: CGSize = CGSize(width: 151, height: 139)
}
