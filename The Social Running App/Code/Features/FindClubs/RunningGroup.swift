//
//  RunningGroup.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/15/24.
//

import Foundation

struct RunningGroup: Identifiable {
    var id = UUID()
    var name: String
    var whereAt: String
    var paces: String
    var distance: String
    var time: String
    var dayOfWeek: String
    var imageName: String
}
