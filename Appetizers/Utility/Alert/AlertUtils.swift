//
//  AlertUtil.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 04/01/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: Text
    var message: Text
    var dismissButton: Alert.Button
}


struct AlertContext {
    //MARK: - Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"),
                                        message: Text("The data received from the server is invalid. Please contact support."),
                                        dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                        message: Text("Invalid response from the server. Please contact support."),
                                        dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                        message: Text("There was an issue connecting the server. If this persists, please contact support."),
                                        dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                        message: Text("Unable to complete the request. Please check your internet connection and try again."),
                                        dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                        message: Text("Please ensure your email is correct."),
                                        dismissButton: .default(Text("OK")))
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                        message: Text("Please enter all the fields."),
                                        dismissButton: .default(Text("OK")))
}
