//
//  UsersListView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 6/15/24.
//

import SwiftUI

struct UsersListView: View {
    @ObservedObject private var viewModel = UserViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.users, id: \.id) { user in
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)
                    Text("Date of Birth: \(formattedDate(user.dateOfBirth))")
                    Text("Email: \(user.email)")
                    Text("Phone Number: \(user.phoneNumber)")
                }
                .padding()
            }
            .navigationBarTitle("Saved Users")
            .onAppear {
                viewModel.fetchUsers()
            }
        }
    }
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}

