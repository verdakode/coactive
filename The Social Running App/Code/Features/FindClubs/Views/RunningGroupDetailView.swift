//
//  RunningGroup.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/16/24.
//

import SwiftUI

struct RunningGroupDetailView: View {
    let group: RunningGroup
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(group.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .padding(.horizontal)
            
            Text(group.name)
                .font(.headline)
                .padding(.horizontal)
            
            Text("Location: \(group.whereAt)")
                .padding(.horizontal)
            
            Text("Paces: \(group.paces)")
                .padding(.horizontal)
            
            Text("Distance: \(group.distance)")
                .padding(.horizontal)
            
            Text("Time: \(group.time)")
                .padding(.horizontal)
            
            Text("Day: \(group.dayOfWeek)")
                .padding(.horizontal)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(.bottom, 20)
    }
}

struct RunningGroupDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RunningGroupDetailView(group: sampleRunningGroups[0])
    }
}
