//
//  NetworkService.swift
//  SimbirSoft
//
//  Created by NaYfront on 19.09.2022.
//

import Foundation
import UIKit
import FirebaseCore
import FirebaseStorage

class NetworkService {
    // MARK: - Properties
    
    static let shared = NetworkService()
    
    func getData(completion: @escaping (Result<[Category], Error>) -> Void) {
        let categoriesPath = URL(string: "gs://simbirsoft-3e7a4.appspot.com/jsons/JSONCategories.json")!
        let eventsPath = URL(string: "gs://simbirsoft-3e7a4.appspot.com/jsons/JSONEvents.json")!
        
        URLSession.shared.dataTask(with: categoriesPath) { (categories, _, error) in
            do {
                if let categories = categories {
                    var receivedCategories = try JSONDecoder().decode([Category].self, from: categories)
                    
                    URLSession.shared.dataTask(with: eventsPath) { (events, _, error) in
                        do {
                            if let events = events {
                                let receivedEvents = try JSONDecoder().decode([Event].self, from: events)
                                
                                var array: [Category] = []
                                for index in 0...receivedCategories.count - 1 {
                                    for event in receivedEvents {
                                        if receivedCategories[index].name == event.categoryName {
                                            receivedCategories[index].events.append(event)
                                        }
                                    }
                                    
                                    array.append(receivedCategories[index])
                                }
                                
                                completion(.success(array))
                            } else {
                                print("No Data")
                            }
                        } catch {
                            completion(.failure(error))
                        }
                    }.resume()
                } else {
                    print("No Data")
                }
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
