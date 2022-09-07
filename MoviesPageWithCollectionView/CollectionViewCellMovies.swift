//
//  CollectionViewCellMovies.swift
//  MoviesPageWithCollectionView
//
//  Created by Ogulcan Kara on 7.09.2022.
//

import UIKit

protocol CollectionViewCellMoviesProtocol {
    func addBucket(indexPath:IndexPath)
}

class CollectionViewCellMovies: UICollectionViewCell {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var moviePriceLabel: UILabel!
    
    
    var cellProtocol:CollectionViewCellMoviesProtocol?
    var indexPath:IndexPath?
    
    
    @IBAction func addBucketButton(_ sender: Any) {
        
        cellProtocol?.addBucket(indexPath: indexPath!)
        
    }
    
    
    
    
}
