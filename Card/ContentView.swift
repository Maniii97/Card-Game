//
//  ContentView.swift
//  Card
//
//  Created by Mani Jha on 13/08/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var plCard = "card6"
    @State var aiCard = "card12"
    @State var plScore = 0
    @State var aiScore = 0
    
    

    var body: some View {
        
        ZStack{
            
            Image("background-wood-grain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()

                
                HStack {
                    Spacer()
                    Image(plCard)
                    Spacer()
                    Image(aiCard)
                    Spacer()

                }
                Spacer()
                
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                
                
                Spacer()

                
                HStack{
                    Spacer()
                    VStack{
                        Text("YOU")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(plScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("AI BOT")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(aiScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                
            }
            
        }

    }
    func deal(){
        
        var randomPlayer = (Int.random(in: 2...14))
        var randomAi = (Int.random(in: 2...14))
        
        plCard = "card" + String(randomPlayer)
        aiCard = "card" + String(randomAi)
        
        if randomPlayer > randomAi{
            plScore+=1
        }
        else if randomAi > randomPlayer{
            aiScore+=1
        }
        else{
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
