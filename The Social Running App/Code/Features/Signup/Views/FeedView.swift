//
//  FeedView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 6/9/24.
//

import SwiftUI

struct Club {
    let name: String
    let activity: String
    let location: String
    let imageName: String
}

let allClubs = [
    Club(name: "Lyon St Run Club", activity: "Running", location: "Nearby", imageName: "lyonst"),
    Club(name: "Friendship Miles", activity: "Running", location: "Far", imageName: "villagerec"),
    Club(name: "Downtown Cyclists", activity: "Cycling", location: "Nearby", imageName: "cyclists"),
    Club(name: "Lookout Park Yoga", activity: "Yoga", location: "Nearby", imageName: "yogafriends"),
    Club(name: "YMCA Swim Friends", activity: "Swimming", location: "Far", imageName: "swimfriends"),
    Club(name: "Hiking Mountains", activity: "Hiking", location: "Nearby", imageName: "mountainfriends")
]

struct FeedView: View {
    var selectedActivities: [String]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Clubs for Selected Activities")
                    .font(.title)
                    .padding()
                
                ForEach(selectedActivities, id: \.self) { activity in
                    VStack(alignment: .leading) {
                        Text(activity)
                            .font(.headline)
                            .padding(.leading)
                        
                        ForEach(filteredClubs(for: activity), id: \.name) { club in
                            VStack {
                                Image(club.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 400)
                                    .clipped()
                                    .cornerRadius(15)
                                    .overlay(
                                        Text(club.name)
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                            .padding([.leading, .bottom], 20),
                                        alignment: .bottomLeading
                                    )
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Activity: \(club.activity)")
                                    Text("Location: \(club.location)")
                                    Text("Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                                }
                                .padding()
                                
                                NavigationLink(destination: GroupChatView(club: club)) {
                                    Text("Meet the club")
                                        .font(.headline)
                                        .foregroundColor(.blue)
                                        .padding()
                                        .background(Color(.systemGray5))
                                        .cornerRadius(10)
                                }
                                .padding([.top, .horizontal])
                            }
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(15)
                            .shadow(radius: 5)
                            .padding([.top, .horizontal])
                        }
                    }
                }
            }
        }
        .navigationBarTitle("Clubs Feed", displayMode: .inline)
    }
        
    func filteredClubs(for activity: String) -> [Club] {
        allClubs.filter { $0.activity == activity }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(selectedActivities: ["Running", "Yoga"])
    }
}
