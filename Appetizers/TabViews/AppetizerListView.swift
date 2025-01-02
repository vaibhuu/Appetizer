//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 01/01/25.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject private var appetizerListViewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationStack {
            List(appetizerListViewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
                .navigationTitle("Appertilers")
        }
        .onAppear() {
            appetizerListViewModel.getAppetizers()
        }
       
    }
    
   
}

#Preview {
    AppetizerListView()
}
