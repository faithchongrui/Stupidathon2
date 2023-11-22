//
//  Easy_mode.swift
//  Stupidathon2
//
//  Created by Trevor Toh Hong Rui on 22/11/23.
//

import SwiftUI

struct Easy_mode: View {
    @State var random = arc4random_uniform(2)
    var body: some View {
        NavigationStack{
            VStack{
                Button{
                    random = arc4random_uniform(2)
                } label: {
                    Text("Click to generate again")
                }
                Spacer()

                 switch random {
                     case 0:
                       Image("galaxy")
                         .resizable()
                         .scaledToFit()
                     case 1:
                       Image("Easy3")
                         .resizable()
                         .scaledToFit()
                     case 2:
                       Image("Easy4")
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
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Easy_mode_Previews: PreviewProvider {
    static var previews: some View {
        Easy_mode()
    }
}
