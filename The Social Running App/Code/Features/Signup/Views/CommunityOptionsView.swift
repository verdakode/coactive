//
//  CommunityOptionsView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct CommunityOptionsView: View {
    
    var body: some View {
        VStack {
            Text("Choose Your Community Option")
                .font(.title)
                .padding()
            
            NavigationLink(destination: SelectActivityView()) {
                Text("Find a club near you!")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            NavigationLink(destination: SelectActivityView()) {
                Text("Find a Single Friend")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            NavigationLink(destination: SelectActivityView()) {
                Text("Create your own club")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CommunityOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityOptionsView()
    }
}
