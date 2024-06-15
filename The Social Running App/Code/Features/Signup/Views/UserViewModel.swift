//
//  UserViewModel.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 6/15/24.
//

import SwiftUI
import Combine

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    
    private let userRepository = UserRepository()
    
    func fetchUsers() {
        users = userRepository.getAllUsers()
    }
    
    func addUser(name: String, dateOfBirth: Date, email: String, phoneNumber: String) {
        userRepository.addUser(name: name, dateOfBirth: dateOfBirth, email: email, phoneNumber: phoneNumber)
        fetchUsers()
    }
}

