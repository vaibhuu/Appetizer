//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 05/01/25.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: AppetizerModel!
    @Binding var isShowingDetail: Bool

    
    var body: some View {
        VStack() {
            AppetizerImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionView(title: "Calories", value: appetizer.calories)
                    NutritionView(title: "Carbs", value: appetizer.carbs)
                    NutritionView(title: "Protien", value: appetizer.protein)
                }
            }
            
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(30)
            
            
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
            } label: {
                APDismissButton()
            }, alignment: .topTrailing)
        }
    }


#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(false))
}


struct NutritionView: View {
    var title: String
    var value: Int
    
    var body: some View {
        VStack(spacing: 6) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
