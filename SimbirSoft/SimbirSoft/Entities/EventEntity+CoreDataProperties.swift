//
//  EventEntity+CoreDataProperties.swift
//  
//
//  Created by NaYfront on 06.09.2022.
//
//

import Foundation
import CoreData

extension EventEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<EventEntity> {
        return NSFetchRequest<EventEntity>(entityName: "EventEntity")
    }

    @NSManaged public var address: String?
    @NSManaged public var categoryName: String?
    @NSManaged public var company: String?
    @NSManaged public var date: String?
    @NSManaged public var detailDescription: String?
    @NSManaged public var eventDescription: String?
    @NSManaged public var id: Int64
    @NSManaged public var image: String?
    @NSManaged public var name: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var detailImages: [String]?
    @NSManaged public var category: CategoryEntity?

}
