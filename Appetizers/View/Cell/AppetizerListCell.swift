//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 02/01/25.
//

import SwiftUI

struct AppetizerListCell: View {
    
    var appetizer: AppetizerModel
    
    var body: some View {
        HStack {
            AppetizerImage(urlString: appetizer.imageURL)
                .scaledToFit()
                .cornerRadius(9)
                .frame(width: 120, height: 90)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .lineLimit(2)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.headline)
                    .foregroundStyle(.secondary)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
