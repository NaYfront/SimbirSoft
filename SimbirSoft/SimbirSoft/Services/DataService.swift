//
//  DataService.swift
//  SimbirSoft
//
//  Created by NaYfront on 31.07.2022.
//

import Foundation

protocol DataServiceProtocol {
    func getData<T: Decodable>(category: String?, type: T.Type, completion: @escaping (Result<[T], Error>) -> Void)
}

class DataService: DataServiceProtocol {
    func getData<T: Decodable>(category: String?, type: T.Type, completion: @escaping (Result<[T], Error>) -> Void) {
        DispatchQueue.global(qos: .background).async {
            var resource = "JSON"

            if type == Category.self {
                resource += "Categories"
            } else {
                resource += "Events"
            }
            
            guard let path = Bundle.main.url(forResource: resource, withExtension: "json") else { return }
            
            do {
                let data = try Data(contentsOf: path)
                let receivedData = try JSONDecoder().decode([T].self, from: data)
                
                if category != nil && type == Event.self {
                    var filteredData: [T] = []
                    receivedData.forEach { item in
                        // swiftlint:disable force_cast
                        if (item as! Event).categoryName == category {
                            filteredData.append(item)
                        }
                        // swiftlint:enable force_cast
                    }
                    
                    completion(.success(filteredData))
                } else {
                    completion(.success(receivedData))
                }
            } catch {
                completion(.failure(error))
            }
        }
    }
}
