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
    var events: [Event]
}

class CategoriesMenu {
    var categories: [Category]
    
    init() {
        let events =
        [
            Event(image: #imageLiteral(resourceName: "event1"),
                  name: "Спонсоры отремонтируют школу-интернат",
                  description: "Дубовская школа-интернат для детей с ограниченными возможностями здоровья стала первой в области …",
                  date: "Осталось 13 дней (21.09 - 20.10)"),
            Event(image: #imageLiteral(resourceName: "event2"),
                  name: "Конкурс по вокальному пению в детском доме №6",
                  description: "Дубовская школа-интернат для детей с ограниченными возможностями здоровья стала первой в области …",
                  date: "Октябрь 20, 2016")
        ]
        
        let categories =
        [
            Category(name: "Дети", image: #imageLiteral(resourceName: "children"), events: events),
            Category(name: "Взрослые", image: #imageLiteral(resourceName: "adult"), events: events),
            Category(name: "Пожилые", image: #imageLiteral(resourceName: "old"), events: events),
            Category(name: "Животные", image: #imageLiteral(resourceName: "animals"), events: events),
            Category(name: "Мероприятия", image: #imageLiteral(resourceName: "events"), events: events)
        ]
        
        self.categories = categories
    }
}
