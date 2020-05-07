//
//  ContentView.swift
//  day2classwork
//
//  Created by Safeyah on 5/4/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var athkar = " استغفر الله ربي و أتوب إليه"
    @State var athkarCoounter = 0
    var body: some View {
        VStack {
            NavigationView{
                NavigationLink(destination: secondView(athkar: athkar, athkarCoounter2: $athkarCoounter)) {
                    
                    VStack{
                        Text(athkar)
                            .font(.title).padding()
                        Text("\(athkarCoounter)").font(.title)
                            .padding(.horizontal)
                            .background(Color.init(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
                            .clipShape(Capsule())
                    }
                    
                    
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

