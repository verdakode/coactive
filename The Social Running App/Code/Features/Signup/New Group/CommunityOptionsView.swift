//
//  CommunityOptionsView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct CommunityOptionsView: View {
    var body: some View {
        VStack {
            Text("Choose Your Community Option")
                .font(.title)
                .padding()
            
            NavigationLink(destination: ClubsView()) {
                Text("Join an Established Group")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Button(action: {
                // Handle creating an exercise group
            }) {
                Text("Create an Exercise Group")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Button(action: {
                // Handle finding a single friend
            }) {
                Text("Find a Single Friend")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CommunityOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityOptionsView()
    }
}
