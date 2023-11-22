//
//  GameView.swift
//  Stupidathon2
//
//  Created by FAITH CHONG RUI EN stu on 22/11/23.
//

import SwiftUI

struct GameView: View {

    @State private var randomX = CGFloat.random(in: 0..<393)
    @State private var randomY = CGFloat.random(in: 0..<759)
    
    @State var size = CGSize.zero
    
    var body: some View {
        ZStack {
            VStack {
                Button("refresh") {
                    randomX = CGFloat.random(in: 0..<size.width)
                    randomY = CGFloat.random(in: 0..<size.height)
                }

                ZStack {
                    GeometryReader { geom in
                        Color.red.opacity(0.001)
                        Image("solo")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .position(x: randomX, y: randomY)
                            .onAppear {
                                size = geom.size
                            }
                            .onChange(of: geom.size) { _ in
                                size = geom.size
                            }
                            .onChange(of: size) { _ in
                                randomX = CGFloat.random(in: 0..<size.width)
                                randomY = CGFloat.random(in: 0..<size.height)
                            }
                    }
                }
                .background {
                    Image("lotsfaces")
                        .resizable()
                        .scaledToFill()
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
