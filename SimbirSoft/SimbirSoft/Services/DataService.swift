//
//  DataService.swift
//  SimbirSoft
//
//  Created by NaYfront on 31.07.2022.
//

import Foundation

protocol DataServiceProtocol {
    func getData(completion: @escaping (Result<[Category], Error>) -> Void)
}

class DataService: DataServiceProtocol {
    func getData(completion: @escaping (Result<[Category], Error>) -> Void) {
        DispatchQueue.global(qos: .background).async {
            guard let path = Bundle.main.url(forResource: "JSONEvents", withExtension: "json") else { return }
            
            do {
                let events = try Data(contentsOf: path)
                let receivedEvents = try JSONDecoder().decode([Event].self, from: events)
                
                guard let path = Bundle.main.url(forResource: "JSONCategories", withExtension: "json") else { return }
                
                let data = try Data(contentsOf: path)
                var receivedData = try JSONDecoder().decode([Category].self, from: data)
                
                for index in 0..<receivedData.count {
                    receivedData[index].events = receivedEvents
                }
                
                completion(.success(receivedData))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
