//
//  GroupchatView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 6/15/24.
//

import SwiftUI

struct GroupChatView: View {
    var club: Club

    var body: some View {
        VStack {
            Text("Welcome to \(club.name) Group Chat")
                .font(.title)
                .padding()
            // Replace this with your chat or forum UI
            Text("Chat functionality goes here.")
                .padding()
            
            Spacer()
        }
        .navigationBarTitle(club.name, displayMode: .inline)
    }
}

struct GroupChatView_Previews: PreviewProvider {
    static var previews: some View {
        GroupChatView(club: allClubs[0])
    }
}
