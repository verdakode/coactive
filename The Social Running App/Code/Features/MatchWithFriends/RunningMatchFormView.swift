//
//  RunningMatchFormView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct RunningMatchFormView: View {
    @State private var profile = ""
    @State private var preferredPace = ""
    @State private var timeIWantToRunAt = ""
    @State private var distanceWantingToRun = ""

    @Binding var matches: [RunningMatch]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Profile Information")) {
                    TextField("Profile Name", text: $profile)
                }

                Section(header: Text("Running Preferences")) {
                    TextField("Preferred Pace", text: $preferredPace)
                    TextField("Preferred Running Time", text: $timeIWantToRunAt)
                    TextField("Preferred Distance", text: $distanceWantingToRun)
                }

                Button(action: {
                    let newMatch = RunningMatch(profile: profile, preferredPace: preferredPace, timeIWantToRunAt: timeIWantToRunAt, distanceWantingToRun: distanceWantingToRun)
                    matches.append(newMatch)
                }) {
                    Text("Save")
                }
            }
            .navigationBarTitle("Enter Running Preferences")
        }
    }
}

struct RunningMatchFormView_Previews: PreviewProvider {
    @State static var matches = [RunningMatch]()
    static var previews: some View {
        RunningMatchFormView(matches: $matches)
    }
}

