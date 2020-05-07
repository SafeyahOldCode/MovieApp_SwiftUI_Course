//
//  secondView.swift
//  day2Classwork
//
//  Created by Safeyah on 5/4/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import SwiftUI

struct secondView: View {
    
    var athkar : String
    @Binding var athkarCoounter2 : Int
   
    var body: some View {
        HStack{
            
            Text(athkar).font(.title)
            
            Button(action: {
                self.athkarCoounter2 += 1
            }) {
                Text("\(athkarCoounter2)")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(Color.init(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
                    .clipShape(Circle())
                
            }
        }
    }
}


