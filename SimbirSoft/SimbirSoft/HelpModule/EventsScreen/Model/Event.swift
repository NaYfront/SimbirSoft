//
//  Events.swift
//  SimbirSoft
//
//  Created by NaYfront on 24.07.2022.
//

import Foundation
import UIKit

struct Event: Decodable {
    var image: String
    var name: String
    var description: String
    var date: String
    var company: String
    var address: String
    var phoneNumber: String
    var detailImages: [String]
    var detailDescription: String
}
