//
//  Easy_mode.swift
//  Stupidathon2
//
//  Created by Trevor Toh Hong Rui on 22/11/23.
//

import SwiftUI
import Combine

struct Easy_mode: View {
    @State var random = arc4random_uniform(5)
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Comic Sans MS", size: 30)!]
    }
    var body: some View {
        NavigationStack{
            VStack{
                Button{
                    random = arc4random_uniform(5)
                } label: {
                    Text("Click to generate again")
                        .font(Font.custom("Comic Sans MS", size: 17))
                }
                Spacer()

                 switch random {
                     case 0:
                       Image("galaxy")
                         .resizable()
                         .scaledToFit()
                     case 1:
                       Image("easy3")
                         .resizable()
                         .scaledToFit()
                     case 2:
                       Image("easy4")
                         .resizable()
                         .scaledToFit()
                     case 3:
                       Image("easy5")
                         .resizable()
                         .scaledToFit()

                 default:
                       Image("staticnoise")
                         .resizable()
                         .scaledToFit()
                 }
                Spacer()
            }
            .navigationTitle("Easy Mode")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Easy_mode_Previews: PreviewProvider {
    static var previews: some View {
        Easy_mode()
    }
}
