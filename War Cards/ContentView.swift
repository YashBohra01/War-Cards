//
//  ContentView.swift
//  War Cards
//
//  Created by Yash Bohra on 17/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard="card7"
    @State var CPUCard="card13"
    @State var playerScore = 0
    @State var CPUScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Image(playerCard).padding()
                    Image(CPUCard)
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(CPUScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .font(.headline)
                .font(.caption)
                .foregroundColor(.white)
                Spacer()
            }
        }

    }
    
    func deal() {
        //Randomize player card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card"+String(playerCardValue)
        //Randomize CPU card
        var CPUCardValue = Int.random(in: 2...14)
        CPUCard = "card"+String(CPUCardValue)
        //Update scores
        if playerCardValue > CPUCardValue{
            playerScore+=1
        }
        else if playerCardValue < CPUCardValue{
            CPUScore+=1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
