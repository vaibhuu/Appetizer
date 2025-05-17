//
//  User.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 17/05/25.
//
import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birsthDate = Date()
    var frequentRefills = false
    var extraNapkins = false
}
