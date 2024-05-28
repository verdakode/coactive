//
//  Profile.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/26/24.
//

import Foundation

struct UserProfile: Identifiable {
    var id = UUID()
    var name: String
    var bio: String
    var profileImageName: String
    var preferredPace: String
    var timeIWantToRunAt: String
    var distanceWantingToRun: String
}
