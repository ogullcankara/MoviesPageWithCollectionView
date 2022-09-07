//
//  Movies.swift
//  MoviesPageWithCollectionView
//
//  Created by Ogulcan Kara on 7.09.2022.
//

import Foundation

class Movies {
    var movieId:Int?
    var movieTitle:String?
    var moviePicname:String?
    var moviePrice:Double?
    
    init(){
        
    }
    
    init(movieId:Int?, movieTitle:String?, moviePicname:String?, moviePrice:Double?) {
        self.movieId = movieId
        self.movieTitle = movieTitle
        self.moviePicname = moviePicname
        self.moviePrice = moviePrice
    }
}
