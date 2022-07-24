//
//  Category.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.07.2022.
//

import Foundation
import UIKit

struct Category {
    var name: String
    var image: UIImage?
}

class Menu {
    var categories: [Category]
    
    init() {
        let categories =
        [
            Category(name: "Дети", image: UIImage(named: "children") ?? UIImage()),
            Category(name: "Взрослые", image: UIImage(named: "adult") ?? UIImage()),
            Category(name: "Пожилые", image: UIImage(named: "old") ?? UIImage()),
            Category(name: "Животные", image: UIImage(named: "animals") ?? UIImage()),
            Category(name: "Мероприятия", image: UIImage(named: "events") ?? UIImage())
        ]
        
        self.categories = categories
    }
}
