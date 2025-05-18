//
//  EmptyState.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 18/05/25.
//
import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -70)
         
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is our test message. \nI'm making it a little more long")
}
