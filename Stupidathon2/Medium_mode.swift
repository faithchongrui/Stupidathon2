//
//  Medium_mode.swift
//  Stupidathon2
//
//  Created by Trevor Toh Hong Rui on 22/11/23.
//

import SwiftUI

struct Medium_mode: View {
    @State var random = arc4random_uniform(4)
    var body: some View {
        NavigationStack{
            VStack{
                Button{
                    random = arc4random_uniform(4)
                } label: {
                    Text("Click to generate again")
                }
                Spacer()

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
