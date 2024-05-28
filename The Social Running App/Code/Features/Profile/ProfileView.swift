//
//  ProfileView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/26/24.
//

import SwiftUI

struct ProfileView: View {
    let userProfile: UserProfile

    var body: some View {
        VStack {
            Image(userProfile.profileImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding()

            Text(userProfile.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)

            Text(userProfile.bio)
                .font(.body)
                .foregroundColor(.gray)
                .padding(.horizontal)
                .padding(.bottom, 20)
                .multilineTextAlignment(.center)

            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Preferred Pace:")
                        .fontWeight(.bold)
                    Spacer()
                    Text(userProfile.preferredPace)
                }
                HStack {
                    Text("Preferred Running Time:")
                        .fontWeight(.bold)
                    Spacer()
                    Text(userProfile.timeIWantToRunAt)
                }
                HStack {
                    Text("Preferred Distance:")
                        .fontWeight(.bold)
                    Spacer()
                    Text(userProfile.distanceWantingToRun)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .padding(.horizontal)

            Spacer()
        }
        .navigationBarTitle("Profile", displayMode: .inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(userProfile: sampleProfiles[0])
    }
}

