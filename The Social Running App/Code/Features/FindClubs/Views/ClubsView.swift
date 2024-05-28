//
//  SwiftUIView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/16/24.
//

import SwiftUI

struct ClubsView: View {
    var body: some View {
        VStack {
            // Big branding
            Text("CoActive Clubs")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical, 20)
            
            // ScrollView for running groups
            ScrollView {
                VStack(spacing: 20) {
                    // Running Groups with Images and Captions
                    ForEach(sampleRunningGroups) { group in
                        NavigationLink(destination: RunningGroupDetailView(group: group)) {
                            HStack {
                                Spacer()
                                VStack(alignment: .center) {
                                    Image(group.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 450, height: 250)
                                        .cornerRadius(40)
                                        .padding(.all)
                                    
                                    Text(group.name)
                                        .font(.headline)
                                        .padding(.horizontal)
                                    
                                    Text("Location: \(group.whereAt)")
                                        .padding(.horizontal)
                                    
                                    Text("Paces: \(group.paces)")
                                        .padding(.horizontal)
                                    
                                    Text("Distance: \(group.distance)")
                                        .padding(.horizontal)
                                    
                                    Text("Time: \(group.time)")
                                        .padding( .horizontal)
                                    
                                    Text("Day: \(group.dayOfWeek)")
                                        .padding( .horizontal)
                                        .padding(.bottom, 20)
                                }
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(10)
                                .padding()
                            }
                        }
                    }
                }
            }
            .padding()
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                // Action to go back
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.blue)
            }, trailing: NavigationLink(destination: ProfileView(userProfile: sampleProfiles[0])) {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
            })
        }
    }
}

struct ClubsView_Previews: PreviewProvider {
    static var previews: some View {
        ClubsView()
    }
}

