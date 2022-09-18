//
//  Events.swift
//  SimbirSoft
//
//  Created by NaYfront on 24.07.2022.
//

import Foundation
import UIKit

struct Event: Decodable {
    var id: Int
    var categoryName: String
    var image: String
    var name: String
    var eventDescription: String
    var date: String
    var company: String
    var address: String
    var phoneNumber: String
    var detailImages: [String]
    var detailDescription: String
    
    init(entity: EventEntity) {
        id = Int(entity.id)
        categoryName = entity.categoryName ?? "categoryName"
        image = entity.image ?? "event1"
        name = entity.name ?? "name"
        eventDescription = entity.eventDescription ?? "eventDescription"
        date = entity.date ?? "date"
        company = entity.company ?? "company"
        address = entity.address ?? "address"
        phoneNumber = entity.phoneNumber ?? "phoneNumber"
        detailImages = entity.detailImages ?? ["detail1", "detail2", "detail3"]
        detailDescription = entity.detailDescription ?? "detailDescription"
    }
}
