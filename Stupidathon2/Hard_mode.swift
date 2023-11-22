//
//  Hard_mode.swift
//  Stupidathon2
//
//  Created by Trevor Toh Hong Rui on 22/11/23.
//

import SwiftUI

struct Hard_mode: View {
    @State var random = arc4random_uniform(2)
    var body: some View {
        NavigationStack{
           GameView()
        }
        .navigationTitle("Hard Mode")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Hard_mode_Previews: PreviewProvider {
    static var previews: some View {
        Hard_mode()
    }
}
