//
//  SignupView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct SignupView: View {
    @State private var name = ""
    @State private var dateOfBirth = Date()
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var activity = ""

    var body: some View {
        NavigationView {
            VStack {
                // Branding Section
                Image(systemName: "figure.walk.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .padding(.top, 50)

                Text("Welcome to CoActive")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)

                Text("Connect with people who love to exercise")
                    .font(.subheadline)
                    .padding(.top, 5)
                    .padding(.horizontal)

                Spacer()

                // User Info Form
                UserInfoFormView(name: $name, dateOfBirth: $dateOfBirth, email: $email, phoneNumber: $phoneNumber)
                    .padding(.top, 30)

                Spacer()
            }
            .padding()
        }
    }
}


struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
