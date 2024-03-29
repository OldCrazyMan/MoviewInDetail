//
//  MovieTableViewCellModel.swift
//  M22_MVVM_Homework
//
//  Created by Tim Akhmetov on 11.01.2024.
//

import Foundation

class MovieTableViewCellModel {
    
    var id: Int
    var nameRu: String
    var nameEn: String
    var posterUrl: String
    
    init(movie: Movie) {
        self.id = movie.filmId
        self.nameRu = movie.nameRu ?? ""
        self.nameEn = movie.nameEn ?? ""
        self.posterUrl = movie.posterUrl
    }
}
