//
//  SelectCoactivityView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct SelectActivityView: View {
    @State private var selectedActivities: Set<String> = []
    @State private var navigateToFeed = false
    
    let activities = ["Running", "Cycling", "Yoga", "Swimming", "Hiking"]
    
    var body: some View {
        VStack {
            Text("Select your favorite activities")
                .font(.title)
                .padding()
            List(activities, id: \.self) {activity in
                MultipleSelectionRow(activity: activity, isSelected: selectedActivities.contains(activity)) {
                    if selectedActivities.contains(activity) {
                        selectedActivities.remove(activity)
                    } else {
                        selectedActivities.insert(activity)
                    }
                }
            }
            NavigationLink(destination: FeedView(selectedActivities: Array(selectedActivities)), isActive: $navigateToFeed) {
                EmptyView()
            }
            Button(action: {
                navigateToFeed = true
            }) {
                Text("Next")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top)
            
            Spacer()
        }
        .navigationBarTitle("Select Activities", displayMode: .inline)
    }
}


struct MultipleSelectionRow: View {
    var activity: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        HStack {
            Text(activity)
            Spacer()
            if isSelected {
                Image(systemName: "checkmark")
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            self.action()
        }
        .padding()
    }
}

struct SelectActivityView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SelectActivityView()
        }
    }
}

