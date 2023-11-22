//
//  GameView.swift
//  Stupidathon2
//
//  Created by FAITH CHONG RUI EN stu on 22/11/23.
//

import SwiftUI

struct GameView: View {
    @State private var refresh = 0
    let random = CGFloat.random(in: 0..<100)
    var body: some View {
        ZStack { 
            Text("test")
            Text("Current counter: \(refresh)")
                .position(x: random, y: random)
                   Button("refresh") {
                       refresh += 1
                   }
               }
               .font(.title)
               .padding()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
