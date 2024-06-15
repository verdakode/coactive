//
//  UserRepository.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 6/15/24.
//

import Foundation

class UserRepository {
    private let dbHelper = DatabaseHelper.shared
    
    func getAllUsers() -> [User] {
        return dbHelper.fetchUsers()
    }
    
    func addUser(name: String, dateOfBirth: Date, email: String, phoneNumber: String) {
        dbHelper.insertUser(name: name, dateOfBirth: dateOfBirth, email: email, phoneNumber: phoneNumber)
    }
}
