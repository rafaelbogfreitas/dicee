//
//  ContentView.swift
//  Dicee-swiftUI
//
//  Created by Rafael Freitas on 12/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                
                HStack(spacing: 20) {
                    Dice(imageName: "dice1")
                    Dice(imageName: "dice2")
                }
                .padding()
            }
        }
    }
}


struct Dice: View {
    
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
