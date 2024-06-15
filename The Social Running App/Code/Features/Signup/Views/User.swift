//
//  User.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 6/15/24.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int64
    let name: String
    let dateOfBirth: Date
    let email: String
    let phoneNumber: String
}
