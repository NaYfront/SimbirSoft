//
//  DataService.swift
//  SimbirSoft
//
//  Created by NaYfront on 31.07.2022.
//

import Foundation

protocol DataServiceProtocol {
    func getCategories(completion: @escaping (Result<[Category], Error>) -> Void)
    func getEvents(category: String, completion: @escaping (Result<[Event], Error>) -> Void)
}

class DataService: DataServiceProtocol {
    func getCategories(completion: @escaping (Result<[Category], Error>) -> Void) {
        DispatchQueue.global(qos: .background).async {
            guard let path = Bundle.main.url(forResource: "JSONCategories", withExtension: "json") else { return }
            
            do {
                let data = try Data(contentsOf: path)
                let receivedData = try JSONDecoder().decode([Category].self, from: data)
                
                completion(.success(receivedData))
            } catch {
                completion(.failure(error))
            }
        }
    }
    
    func getEvents(category: String, completion: @escaping (Result<[Event], Error>) -> Void) {
        DispatchQueue.global(qos: .background).async {
            guard let path = Bundle.main.url(forResource: "JSONEvents", withExtension: "json") else { return }
            
            do {
                let data = try Data(contentsOf: path)
                let receivedData = try JSONDecoder().decode([Event].self, from: data)
                var filteredData: [Event] = []
                
                receivedData.forEach { item in
                    if item.categoryName == category {
                        filteredData.append(item)
                    }
                }
                
                completion(.success(filteredData))
            } catch {
                completion(.failure(error))
            }
        }
    }
}

//    func getData<T: Decodable>(completion: @escaping (Result<[T], Error>) -> Void) {
//        DispatchQueue.global(qos: .background).async {
//            var resource = "JSON"
//            switch T {
//            case is Category:
//                resource += "Categories"
//            case is Event:
//                resource += "Events"
//            default:
//                break
//            }
//            guard let path = Bundle.main.url(forResource: "JSONEvents", withExtension: "json") else { return }
//
//            do {
//                let data = try Data(contentsOf: path)
//                let receivedData = try JSONDecoder().decode([T].self, from: data)
//
//                completion(.success(receivedData))
//            } catch {
//                completion(.failure(error))
//            }
//        }
//    }
