//
//  ContentView.swift
//  Stupidathon2
//
//  Created by FAITH CHONG RUI EN stu on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var rotation: Angle = .degrees(60)
    @State var moveDown = 0
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Comic Sans MS", size: 30)!]
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    NavigationLink{
                        Easy_mode()
                    } label: {
                        Text("Easy mode")
                            .font(Font.custom("Comic Sans MS", size: 17))
                    }
                    NavigationLink{
                        Medium_mode()
                    } label: {
                        Text("Medium mode")
                            .font(Font.custom("Comic Sans MS", size: 17))
                    }
                    NavigationLink{
                        Hard_mode()
                    } label: {
                        Text("Hard mode")
                            .font(Font.custom("Comic Sans MS", size: 17))
                    }
                }
                Spacer()
                Text("This is Wavin! Find him!")
                    .font(Font.custom("Comic Sans MS", size: 17))
                Image("solo")
                    .resizable()
                    .scaledToFit()
                    .onAppear {
                        withAnimation(.easeInOut(duration: 6)) {
                            rotation = Angle(degrees: 360 * 4)
                            moveDown = 1000
                        }
                    }
                    .onDisappear {
                        rotation = .zero
                        moveDown = 0
                    }
                    .rotationEffect(rotation)
                    .offset(x: 0, y: CGFloat(moveDown))
            }
            .navigationTitle(
                Text("Spot the Wavin").font(.headline)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
