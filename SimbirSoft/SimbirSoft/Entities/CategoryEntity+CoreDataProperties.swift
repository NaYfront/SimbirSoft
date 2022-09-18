//
//  CategoryEntity+CoreDataProperties.swift
//  
//
//  Created by NaYfront on 06.09.2022.
//
//

import Foundation
import CoreData

extension CategoryEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CategoryEntity> {
        return NSFetchRequest<CategoryEntity>(entityName: "CategoryEntity")
    }

    @NSManaged public var id: Int64
    @NSManaged public var image: String?
    @NSManaged public var name: String?
    @NSManaged public var event: NSSet?

}

// MARK: Generated accessors for event
extension CategoryEntity {

    @objc(addEventObject:)
    @NSManaged public func addToEvent(_ value: EventEntity)

    @objc(removeEventObject:)
    @NSManaged public func removeFromEvent(_ value: EventEntity)

    @objc(addEvent:)
    @NSManaged public func addToEvent(_ values: NSSet)

    @objc(removeEvent:)
    @NSManaged public func removeFromEvent(_ values: NSSet)

}
