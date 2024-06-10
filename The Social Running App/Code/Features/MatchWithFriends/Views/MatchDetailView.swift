//
//  RunningMatchDetailView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct MatchDetailView: View {
    let match: RunningMatch

    var body: some View {
        VStack {
            Text(match.profile)
                .font(.largeTitle)
                .padding()

            Text("Preferred Pace: \(match.preferredPace)")
                .padding()

            Text("Preferred Running Time: \(match.timeIWantToRunAt)")
                .padding()

            Text("Preferred Distance: \(match.distanceWantingToRun)")
                .padding()

            Spacer()
        }
        .navigationBarTitle(Text(match.profile), displayMode: .inline)
    }
}

struct MatchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MatchDetailView(match: sampleRunningMatches[0])
    }
}
