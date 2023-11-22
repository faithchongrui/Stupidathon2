//
//  ContentView.swift
//  Stupidathon2
//
//  Created by FAITH CHONG RUI EN stu on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    init() {
        
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
            }
            .navigationTitle(
                Text("Spot the Wavin")
                    .font(Font.custom("Comic Sans MS", size: 17))
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
