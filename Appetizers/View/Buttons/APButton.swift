//
//  APButton.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 05/01/25.
//

import SwiftUI


struct APButton: View {
    var title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(.brandPrimary)
            .cornerRadius(10)
    }
}
