//
//  MovieApp.swift
//  day2Classwork
//
//  Created by Safeyah on 5/4/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import SwiftUI

struct MovieApp: View {
    
    var body: some View {
        NavigationView{
            
            List(movieArray) { movie in
               
                
                NavigationLink(destination: movieDetails(movieContent: movie)) {
                    MovieRow(movieContent: movie)
                }
                
            }.navigationBarTitle("Movies")
            
        }.accentColor(.white)
    }
}

struct MovieApp_Previews: PreviewProvider {
    static var previews: some View {
        MovieApp()
    }
}


struct MovieRow: View {
    var movieContent : Movie
    var body: some View {
        HStack{
            movieContent.movieImage
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading){
                Text(movieContent.movieName).font(.title)
                
                Text(movieContent.characters.joined(separator: ","))
            }.padding(.vertical)
        }
    }
}
