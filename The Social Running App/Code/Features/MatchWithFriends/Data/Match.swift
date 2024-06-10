//
//  Match.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/26/24.
//

import Foundation

struct Match: Identifiable {
    var id = UUID()
    var hobbies: [String]
    var favoriteBook: String
    var favoriteMovie: String
}
