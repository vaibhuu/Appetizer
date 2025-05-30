//
//  OrderView.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 01/01/25.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems(at:))
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                    
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. \nPlease add appetizers!")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offset: IndexSet) {
        orderItems.remove(atOffsets: offset)
    }
}

#Preview {
    OrderView()
}
