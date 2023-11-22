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
    
    var arr = ["galaxy", "lotsfaces", "lotsfaces2", "staticnoise"]
    @State var randomint: Int
    
    init() {
        self.randomint = Int.random(in: 0..<arr.count)
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Button("refresh") {
                    randomX = CGFloat.random(in: 0..<size.width)
                    randomY = CGFloat.random(in: 0..<size.height)
                }
                Button("new bg") {
                    randomint = Int.random(in: 0..<arr.count)
                }
            }
            
            ZStack {
                GeometryReader { geom in
                    Image(arr[randomint])
                        .resizable()
                        .scaledToFill()
                        .frame(width: geom.size.width, height: geom.size.height)
                        .clipped()

                    Image("solo")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .position(x: max(10, min(randomX, geom.size.width - 10)),
                                  y: max(10, min(randomY, geom.size.height - 10)))
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
            .frame(width: 393, height: 759)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
