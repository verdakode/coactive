//
//  RunningMatch.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/26/24.
//

import Foundation

struct RunningMatch: Identifiable {
    var id = UUID()
    var profile: String
    var preferredPace: String
    var timeIWantToRunAt: String
    var distanceWantingToRun: String
    var sharedConnection: String
}
