//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 02/01/25.
//

import UIKit

final class NetworkManager {
    
    static let shared = NetworkManager()
    private let cashe = NSCache<NSString, UIImage>()
    
    static let baseUrl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    
    private let appetizerUrl = baseUrl + "appetizers"
    
    private init() {}
    
    func getAppetizers(completion: @escaping (Result<[AppetizerModel], APError>) -> Void) {
        guard let url = URL(string: appetizerUrl) else {
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            
            if let _ = error {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let appetizers = try JSONDecoder().decode(AppetizerResponse.self, from: data)
                completion(.success(appetizers.request))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        task.resume()
        
    }
    
    
    func downloadImage(fromUrlString urlString: String, completion: @escaping (UIImage?) -> Void) {
        let cacheKey = NSString(string: urlString)
        
        if let image = cashe.object(forKey: cacheKey) {
            completion(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, respomse, error in
            
            guard let data, let image = UIImage(data: data) else {
                completion(nil)
                return
            }
            
            completion(image)
            self.cashe.setObject(image, forKey: cacheKey)
        }
        
        task.resume()
    }
}
