//
//  ContentView.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 31/12/24.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Account")
                }
            
            
            OrderView()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Order")
                }
            
            
        }
        .tint(Color.brandPrimaryColor)        
        
    }
}

#Preview {
    AppetizerTabView()
}
