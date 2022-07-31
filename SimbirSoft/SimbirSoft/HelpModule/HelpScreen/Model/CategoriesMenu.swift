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
                  date: "Осталось 13 дней (21.09 - 20.10)",
                  company: "Благотворительный фонд \"Счастливый мир\"",
                  address: "Санкт-Петербург, Кирочная улица, д. 50А, каб. 208",
                  phoneNumber: "+7 (937) 037 37-73\n+7 (937) 016 16-16",
                  detailImages: [#imageLiteral(resourceName: "detail1"), #imageLiteral(resourceName: "detail3"), #imageLiteral(resourceName: "detail2")],
                  detailDescription: "Участники и болельщики смогли весело и активно провести время на «Петербургском благотворительном марафоне» и при этом финансово поучаствовать в помощи детям.\n\nПри этом финансово поучаствовать в помощи детям. При этом финансово поучаствовать в помощи детям."),
            Event(image: #imageLiteral(resourceName: "event2"),
                  name: "Конкурс по вокальному пению в детском доме №6",
                  description: "Дубовская школа-интернат для детей с ограниченными возможностями здоровья стала первой в области …",
                  date: "Октябрь 20, 2016",
                  company: "Благотворительный фонд \"Счастливый мир\"",
                  address: "Санкт-Петербург, Кирочная улица, д. 50А, каб. 208",
                  phoneNumber: "+7 (937) 037 37-73\n+7 (937) 016 16-16",
                  detailImages: [#imageLiteral(resourceName: "event1"), #imageLiteral(resourceName: "detail3"), #imageLiteral(resourceName: "detail2")],
                  detailDescription: "Участники и болельщики смогли весело и активно провести время на «Петербургском благотворительном марафоне» и при этом финансово поучаствовать в помощи детям.\n\nПри этом финансово поучаствовать в помощи детям. При этом финансово поучаствовать в помощи детям.")
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
