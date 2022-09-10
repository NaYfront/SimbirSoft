//
//  DataStoreService.swift
//  SimbirSoft
//
//  Created by NaYfront on 03.09.2022.
//

import Foundation
import CoreData

class DataStoreService {
    // MARK: - Properties
    
    private let dataService = DataService()
    static let shared = DataStoreService()
        
    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "SimbirSoft")
        container.loadPersistentStores(completionHandler: { (_/*storeDescription*/, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    lazy var viewContext: NSManagedObjectContext = persistentContainer.viewContext

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    // MARK: - Public Functions
    
    func getCategories(completion: @escaping ([Category]) -> Void) {
        var categories: [Category] = []
        
        isDbFilled { result in
            if result {
                let fetchRequest: NSFetchRequest<CategoryEntity> = CategoryEntity.fetchRequest()
                
                var fetchedCategories: [CategoryEntity] = []
                
                do {
                    fetchedCategories = try self.viewContext.fetch(fetchRequest)
                } catch let error {
                    print(error.localizedDescription)
                }
                
                for fetchedCategory in fetchedCategories {
                    categories.append(Category(entity: fetchedCategory))
                }
                
                completion(categories)
            }
        }
    }
    
    func getEvents(categoryName: String, completion: @escaping ([Event]) -> Void) {
        var events: [Event] = []
        
        isDbFilled { result in
            if result {
                let fetchRequest: NSFetchRequest<EventEntity> = EventEntity.fetchRequest()
                
                var fetchedEvents: [EventEntity] = []
                
                do {
                    fetchedEvents = try self.viewContext.fetch(fetchRequest)
                } catch let error {
                    print(error.localizedDescription)
                }
                
                for fetchedEvent in fetchedEvents
                where fetchedEvent.category?.name == categoryName {
                    events.append(Event(entity: fetchedEvent))
                }
                
                completion(events)
            }
        }
    }
    
//    func getData<T: Decodable>(type: T.Type) -> [T] {
//        let managedObject: NSManagedObject = CategoryEntity
//
//        if T.Type.self == Category.self {
//            managedObject = CategoryEntity
//        } else {
//            managedObject = EventEntity
//        }
//
//        let fetchRequest: NSFetchRequest<managedO> = CategoryEntity.fetchRequest()
//
//    }
    
    // MARK: - Private Functions
    
    private func saveEntities(categories: [Category]) {
        for category in categories {
            let categoryEntity = CategoryEntity(context: viewContext)
            
            categoryEntity.id = Int64(category.id)
            categoryEntity.name = category.name
            categoryEntity.image = category.image
            
            for event in category.events {
                let eventEntity = EventEntity(context: viewContext)
                
                eventEntity.id = Int64(event.id)
                eventEntity.categoryName = event.categoryName
                eventEntity.image = event.image
                eventEntity.name = event.name
                eventEntity.eventDescription = event.eventDescription
                eventEntity.date = event.date
                eventEntity.company = event.company
                eventEntity.address = event.address
                eventEntity.phoneNumber = event.phoneNumber
                eventEntity.detailImages = event.detailImages
                eventEntity.detailDescription = event.detailDescription
                eventEntity.category = categoryEntity
                
            }
        }
        
        saveContext()
    }
    
    private func getDataFromDataService(completion: @escaping (Bool) -> Void) {
        dataService.getAllData { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.global(qos: .background).async {
                switch result {
                case .success(let array):
                    self.saveEntities(categories: array)
                    completion(true)
                case .failure(let error):
                    completion(false)
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
    
    private func isDbFilled(completion: @escaping (Bool) -> Void) {
        let fetchRequest: NSFetchRequest<CategoryEntity> = CategoryEntity.fetchRequest()
        
        do {
            if try viewContext.fetch(fetchRequest).count == 0 {
                getDataFromDataService { result in
                    completion(result)
                }
            } else {
                completion(true)
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
