//
//  Easy_mode.swift
//  Stupidathon2
//
//  Created by Trevor Toh Hong Rui on 22/11/23.
//

import SwiftUI

struct Easy_mode: View {
    var body: some View {
        NavigationStack{
            Button{
                
            } label: {
                Text("Click to start")
                    
            }
            .navigationTitle("Easy Mode")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Easy_mode_Previews: PreviewProvider {
    static var previews: some View {
        Easy_mode()
    }
}
