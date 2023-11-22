//
//  ContentView.swift
//  Stupidathon2
//
//  Created by FAITH CHONG RUI EN stu on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink{
                    Easy_mode()
                } label: {
                    Text("Easy mode")
                }
                NavigationLink{
                    Medium_mode()
                } label: {
                    Text("Medium mode")
                }
                NavigationLink{
                    Hard_mode()
                } label: {
                    Text("Hard mode")
                }
            }
            .navigationTitle("Spot the Wavin")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
