//
//  SelectCoactivityView.swift
//  The Social Running App
//
//  Created by Verda Korzeniewski on 5/27/24.
//

import SwiftUI

struct SelectCoActivityView: View {
    @Binding var step: Int

    var body: some View {
        VStack {
            Text("Select Your CoActivity")
                .font(.title)
                .padding()

            Button(action: {
                step = 3
            }) {
                Text("Running")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle("CoActivity", displayMode: .inline)
    }
}

struct SelectCoActivityView_Previews: PreviewProvider {
    static var previews: some View {
        SelectCoActivityView(step: .constant(2))
    }
}
