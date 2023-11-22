//
//  GameView.swift
//  Stupidathon2
//
//  Created by FAITH CHONG RUI EN stu on 22/11/23.
//

import SwiftUI
import Combine

struct GameView: View {

    @State private var randomX = CGFloat.random(in: 0..<393)
    @State private var randomY = CGFloat.random(in: 0..<759)
    
    @State private var randomint = 0
    
    @State var size = CGSize.zero
    
    var backgroundarr = ["hard1", "hard2", "medium3", "staticnoise"]
    
    @State var timeRemaining = 300
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var connectedTimer: Cancellable? = nil
    
    @State private var showAlert = false
    @State private var showAlert2 = false
    
    func timesUp() {
        showAlert = true
    }
    
    init() {
        self.randomint = Int.random(in: 0..<backgroundarr.count)
    }
    
    var body: some View {
        VStack {
            ZStack {
                GeometryReader { geom in
                    Image(backgroundarr[randomint])
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
                        .onTapGesture {
                            self.cancelTimer()
                            showAlert2 = true
                        }
                }
            }
            .frame(width: 370, height: 720)
            .padding(.top)
            
            HStack {
                Text("Score:\(timeRemaining)")
                    .onReceive(timer) { _ in
                        if timeRemaining > 0 {
                            timeRemaining -= 1
                        } else {
                            timesUp()
                        }
                    }
                Button("refresh") {
                    randomX = CGFloat.random(in: 0..<size.width)
                    randomY = CGFloat.random(in: 0..<size.height)
                }
                .font(Font.custom("Comic Sans MS", size: 17))
                .foregroundColor(.white)
                .padding(.horizontal)
                .background(.blue)
                Button("new bg") {
                    randomint = Int.random(in: 0..<backgroundarr.count)
                }
                .font(Font.custom("Comic Sans MS", size: 17))
                .foregroundColor(.white)
                .padding(.horizontal)
                .background(.blue)
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Wavin Says"),
                  message: Text("Disappointing..."),
                  primaryButton: .default(Text("OK"), action: {
                  }),
                  secondaryButton: .cancel(Text("Try Again"), action: {
                        reset()
                        restartTimer()
                  })
            )
        }
        .alert(isPresented: $showAlert2) {
            Alert(title: Text("Wavin Says:YOU FOUND ME"),
                  message: Text("Score:\(timeRemaining)"),
                  primaryButton: .default(Text("OK"), action: {
                  }),
                  secondaryButton: .cancel(Text("Try Again"), action: {
                        reset()
                        restartTimer()
                  })
            )
        }
    }
    
    func reset() {
        randomX = CGFloat.random(in: 0..<393)
        randomY = CGFloat.random(in: 0..<759)
        
        randomint = Int.random(in: 0..<backgroundarr.count)
        
        timeRemaining = 300
        
        showAlert = false
        showAlert2 = false
    }
        
    func cancelTimer() {
            self.connectedTimer?.cancel()
            return
        }
    func restartTimer() {
            self.cancelTimer()
            return
        }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}

