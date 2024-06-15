//
//  DatabaseHelper.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 6/15/24.
//

import Foundation
import SQLite

class DatabaseHelper {
    static let shared = DatabaseHelper()
    
    var db: Connection?
    
    private let usersTable = Table("users")
    private let id = Expression<Int64>("id")
    private let name = Expression<String>("name")
    private let dateOfBirth = Expression<Date>("dateOfBirth")
    private let email = Expression<String>("email")
    private let phoneNumber = Expression<String>("phoneNumber")
    
    private init() {
        do {
            let documentsURL = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            let fileURL = documentsURL.appendingPathComponent("db.sqlite3")
            db = try Connection(fileURL.path)
            createTable()
        } catch {
            print("Unable to open database. Error: \(error)")
        }
    }
    
    private func createTable() {
        do {
            try db?.run(usersTable.create(ifNotExists: true) { table in
                table.column(id, primaryKey: .autoincrement)
                table.column(name)
                table.column(dateOfBirth)
                table.column(email, unique: true)
                table.column(phoneNumber)
            })
        } catch {
            print("Unable to create table. Error: \(error)")
        }
    }
    
    func insertUser(name: String, dateOfBirth: Date, email: String, phoneNumber: String) {
        do {
            let insert = usersTable.insert(self.name <- name, self.dateOfBirth <- dateOfBirth, self.email <- email, self.phoneNumber <- phoneNumber)
            try db?.run(insert)
        } catch {
            print("Insert failed. Error: \(error)")
        }
    }
    
    func fetchUsers() -> [User] {
        var users = [User]()
        
        do {
            for user in try db!.prepare(usersTable) {
                let id = user[self.id]
                let name = user[self.name]
                let dateOfBirth = user[self.dateOfBirth]
                let email = user[self.email]
                let phoneNumber = user[self.phoneNumber]
                users.append(User(id: id, name: name, dateOfBirth: dateOfBirth, email: email, phoneNumber: phoneNumber))
            }
        } catch {
            print("Select failed. Error: \(error)")
        }
        
        return users
    }
}

