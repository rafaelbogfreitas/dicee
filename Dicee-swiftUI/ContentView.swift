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
                Spacer()
                HStack {
                    Dice(n: 1)
                    Dice(n: 6)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                })
                .background(Color(.red))
                
                
            }
            .padding(.vertical)
        }
    }
}


struct Dice: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
