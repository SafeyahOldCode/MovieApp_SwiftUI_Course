//
//  movieDetails.swift
//  day2Classwork
//
//  Created by Safeyah on 5/5/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import SwiftUI

struct movieDetails: View {
    
    var movieContent : Movie
    
    var body: some View {
        ZStack{
            
            movieContent.movieImage
                .resizable()
                .scaledToFill()
                .blur(radius: 15)
            Color.black.opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                movieContent.movieImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white , lineWidth: 3 ))
                
                Text(movieContent.movieName)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                
                Spacer()
            }.shadow(radius: 6)
            
        }
        
        
        
    }
}


