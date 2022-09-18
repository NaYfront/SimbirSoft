//
//  DataService.swift
//  SimbirSoft
//
//  Created by NaYfront on 31.07.2022.
//

import Foundation

protocol DataServiceProtocol {
    func getData<T: Decodable>(type: T.Type, completion: @escaping (Result<[T], Error>) -> Void)
}

class DataService: DataServiceProtocol {
    func getData<T: Decodable>(type: T.Type, completion: @escaping (Result<[T], Error>) -> Void) {
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
                
                completion(.success(receivedData))
            } catch {
                completion(.failure(error))
            }
        }
    }
    
    func getAllData(completion: @escaping (Result<[Category], Error>) -> Void) {
        getData(type: Category.self) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(var categories):
                self.getData(type: Event.self) { result in
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
                        fatalError(error.localizedDescription)
                    }
                }
            case .failure(let error):
                fatalError(error.localizedDescription)
            }
        }
    }
}
