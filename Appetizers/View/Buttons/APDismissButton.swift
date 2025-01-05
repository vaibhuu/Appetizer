//
//  APDismissButton.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 05/01/25.
//

import SwiftUI


struct APDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 35, height: 35)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}
