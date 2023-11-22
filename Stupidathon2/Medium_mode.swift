//
//  Medium_mode.swift
//  Stupidathon2
//
//  Created by Trevor Toh Hong Rui on 22/11/23.
//

import SwiftUI

struct Medium_mode: View {
    @State var rotation: Angle = .degrees(60)
    @State var random = arc4random_uniform(4)
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Comic Sans MS", size: 30)!]
    }
    var body: some View {
        NavigationStack{
            VStack{
                Button{
                    random = arc4random_uniform(4)
                    rotation = Angle(degrees: 360 * 2)
                } label: {
                    Text("Click to generate again")
                        .font(Font.custom("Comic Sans MS", size: 17))
                }
                Spacer()
                VStack {
                    switch random {
                    case 1:
                        Image("medium4")
                            .resizable()
                            .scaledToFit()
                        
                    case 2:
                        Image("medium5")
                            .resizable()
                            .scaledToFit()
                        
                    case 3:
                        Image("medium3")
                            .resizable()
                            .scaledToFit()
                        
                    default:
                        Image("medium6")
                            .resizable()
                            .scaledToFit()
                    }
                       
                }
                .onAppear {
                    withAnimation(.easeInOut(duration: 2)) {
                        rotation = Angle(degrees: 360 * 2)
                    }
                }
                .onDisappear {
                    rotation = .zero
                }
                .rotationEffect(rotation)
                 
                Spacer()
            }
            .navigationTitle("Medium Mode")
            .navigationBarTitleDisplayMode(.large)
        }

    }
}

struct Medium_mode_Previews: PreviewProvider {
    static var previews: some View {
        Medium_mode()
    }
}
