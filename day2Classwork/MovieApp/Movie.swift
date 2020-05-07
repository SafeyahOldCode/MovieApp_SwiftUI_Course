//
//  movie.swift
//  day2Classwork
//
//  Created by Safeyah on 5/5/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import Foundation
import SwiftUI

struct Movie : Hashable , Identifiable {
    var movieName: String
    var movieImage : Image
    var characters : [String]
    var id = UUID()
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}

var movieArray : [Movie] =
    [
        Movie(movieName: "The Fist of Blue Sapphire" , movieImage: Image("The Fist of Blue Sapphire"), characters: ["Haibara", "Conan", "Kaitou Kid"]),
        Movie(movieName: "Harry Potter 1"  , movieImage: Image("harryPotter") , characters: ["Harry", "Hermione", "Ron"]),
        Movie(movieName: "The Incredibles" , movieImage: Image("The_Incredibles") , characters: ["Elastigirl", "violet-parr", "Dash Parr"])
]

