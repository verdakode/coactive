//
//  TheSocialRunningApp.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

@main

struct TheSocialRunningApp: App {
    var body: some Scene {
        WindowGroup {
            SignupView() // Your main view
        }
    }
}


struct TheSocialRunningApp_Previews: PreviewProvider {
    static var previews: some View {
       SignupView()// Use your main view for previews
    }
}
