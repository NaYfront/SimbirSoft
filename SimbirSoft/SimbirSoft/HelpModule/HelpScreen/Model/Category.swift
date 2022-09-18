//
//  Category.swift
//  SimbirSoft
//
//  Created by NaYfront on 15.07.2022.
//

import Foundation
import UIKit

struct Category: Decodable {
    var id: Int
    var name: String
    var image: String
    var events: [Event] = []
    
    init(entity: CategoryEntity) {
        id = Int(entity.id)
        name = entity.name ?? "Дети"
        image = entity.image ?? "children"
    }
}
