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
    
    // MARK: - Functions
    func getData<T: Decodable>(url: URL, type: T.Type, completion: @escaping (Result<[T], Error>) -> Void) {
        DispatchQueue.global(qos: .background).async {
            URLSession.shared.dataTask(with: url) { (data, _, error) in
                do {
                    if let data = data {
                        let receivedData = try JSONDecoder().decode([T].self, from: data)
                        completion(.success(receivedData))
                    } else {
                        completion(.failure(error!))
                    }
                } catch {
                    completion(.failure(error))
                }
            }.resume()
        }
    }
    
    func getAllData(completion: @escaping (Result<[Category], Error>) -> Void) {
        let categoriesURL = URL(string: "https://firebasestorage.googleapis.com/v0/b/simbirsoft-3e7a4.appspot.com/o/jsons%2FJSONCategories.json?alt=media&token=086d7784-f235-4cf7-a4f9-5a875f802cfb")!
        let eventsURL = URL(string: "https://firebasestorage.googleapis.com/v0/b/simbirsoft-3e7a4.appspot.com/o/jsons%2FJSONEvents.json?alt=media&token=d9705ff6-3ce9-4ee0-9ae6-2ad556e66713")!
        
        getData(url: categoriesURL, type: Category.self) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(var categories):
                self.getData(url: eventsURL, type: Event.self) { result in
                    switch result {
                    case .success(let events):
                        var array: [Category] = []
                        for index in 0...categories.count - 1 {
                            for event in events {
                                if categories[index].name == event.categoryName {
                                    categories[index].events.append(event)
                                }
                            }
                            
                            array.append(categories[index])
                        }
                        
                        completion(.success(array))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
