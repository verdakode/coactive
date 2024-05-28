//
//  RunningMatchView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct RunningMatchView: View {
    @State private var matches = sampleRunningMatches

    var body: some View {
        NavigationView {
            VStack {
                List(matches) { match in
                    NavigationLink(destination: MatchDetailView(match: match)) {
                        HStack {
                            Text(match.profile)
                                .font(.headline)
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("Pace: \(match.preferredPace)")
                                Text("Time: \(match.timeIWantToRunAt)")
                                Text("Distance: \(match.distanceWantingToRun)")
                            }
                            .font(.subheadline)
                        }
                        .padding()
                    }
                }
                .navigationBarTitle("Running Matches")
                
                NavigationLink(destination: RunningMatchFormView(matches: $matches)) {
                    Text("Add Running Preferences")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
        }
    }
}

struct RunningMatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
