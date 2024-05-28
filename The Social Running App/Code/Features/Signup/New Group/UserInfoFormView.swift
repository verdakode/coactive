//
//  UserInfoFormView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct UserInfoFormView: View {
    @Binding var step: Int
    @Binding var name: String
    @Binding var dateOfBirth: Date
    @Binding var email: String
    @Binding var phoneNumber: String

    var body: some View {
        VStack {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Name", text: $name)
                    DatePicker("Date of Birth", selection: $dateOfBirth, displayedComponents: .date)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                    TextField("Phone Number", text: $phoneNumber)
                        .keyboardType(.phonePad)
                }
            }
            .navigationBarTitle("", displayMode: .inline)
            
            if !name.isEmpty && !email.isEmpty && !phoneNumber.isEmpty {
                Button(action: {
                    step = 2
                }) {
                    Text("Next")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}


struct UserInfoFormView_Previews: PreviewProvider {
    @State static var step = 1
    @State static var name = ""
    @State static var dateOfBirth = Date()
    @State static var email = ""
    @State static var phoneNumber = ""

    static var previews: some View {
        UserInfoFormView(step: $step, name: $name, dateOfBirth: $dateOfBirth, email: $email, phoneNumber: $phoneNumber)
    }
}
