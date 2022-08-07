//
//  ContentView.swift
//  Aug7DemoApp
//
//  Created by Danny Schnabel on 2022-08-07.
//

import SwiftUI
import Aug5SDK

struct ContentView: View {
    @State var angle: Double = 0
        
    var body: some View {
        ZStack {
            Color.cyan
            HStack {
                TextAngler82(theText: "Hello", angle: $angle)
                TextAngler82(theText: "World", angle: $angle)
            }
        }
        .ignoresSafeArea()
        .onAppear(perform: change)
    }
    
    func change() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1/6) {
            angle = angle + 1
            change()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
