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
import Alamofire

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
        getData(url: URL.categoriesURL, type: Category.self) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let categories):
                self.getData(url: URL.eventsURL, type: Event.self) { result in
                    switch result {
                    case .success(let events):
                        completion(.success(self.makeRightArray(categories: categories, events: events)))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func getDataAlamofire<T: Decodable>(url: URL, type: T.Type, completion: @escaping (Result<[T], Error>) -> Void) {
        AF.request(url).response { response in
            do {
                guard let data = response.value else { return }
                
                let receivedData = try JSONDecoder().decode([T].self, from: data!)
                
                completion(.success(receivedData))
            } catch {
                print(error)
            }
        }
    }
    
    func getAllDataAlamofire(completion: @escaping (Result<[Category], Error>) -> Void) {
        getDataAlamofire(url: URL.categoriesURL, type: Category.self) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let categories):
                self.getDataAlamofire(url: URL.eventsURL, type: Event.self) { result in
                    switch result {
                    case .success(let events):
                        completion(.success(self.makeRightArray(categories: categories, events: events)))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    // MARK: - Private Functions
    
    private func makeRightArray(categories: [Category], events: [Event]) -> [Category] {
        var array = categories
        
        for index in 0...array.count - 1 {
            for event in events {
                if array[index].name == event.categoryName {
                    array[index].events.append(event)
                }
            }
        }
        
        return array
    }
}
