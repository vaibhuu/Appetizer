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
        ZStack {
            NavigationStack {
                List(appetizerListViewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            appetizerListViewModel.selectedAppetizer = appetizer
                            appetizerListViewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("Appertilers")
            }
            .disabled(appetizerListViewModel.isShowingDetail)
            .blur(radius: appetizerListViewModel.isShowingDetail ? 20 : 0)
            
            .onAppear() {
                appetizerListViewModel.getAppetizers()
            }
            
            if appetizerListViewModel.isShowingDetail {
                AppetizerDetailView(appetizer: appetizerListViewModel.selectedAppetizer, isShowingDetail: $appetizerListViewModel.isShowingDetail)
            }
            if appetizerListViewModel.isLoading {
                ProgressView()
                    .tint(.brandPrimaryColor)
            }
            
        }
        .alert(item: $appetizerListViewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
    
   
}

#Preview {
    AppetizerListView()
}
