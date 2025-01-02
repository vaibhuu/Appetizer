//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 02/01/25.
//

import SwiftUI


class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [AppetizerModel] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
