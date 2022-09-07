//
//  ViewController.swift
//  MoviesPageWithCollectionView
//
//  Created by Ogulcan Kara on 7.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    var movies = [Movies]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let design:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = self.movieCollectionView.frame.size.width
        
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        design.minimumInteritemSpacing = 10
        design.minimumLineSpacing = 10
        let cellWidth = (width-30)/2
        
        design.itemSize = CGSize(width: cellWidth, height: cellWidth*1.85)
        
        movieCollectionView!.collectionViewLayout = design
        
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        
        let movie1 = Movies(movieId: 1, movieTitle: "Django", moviePicname: "django", moviePrice: 34.99)
        let movie2 = Movies(movieId: 2, movieTitle: "Inception", moviePicname: "inception", moviePrice: 55.99)
        let movie3 = Movies(movieId: 3, movieTitle: "Interstellar", moviePicname: "interstellar", moviePrice: 43.00)
        let movie4 = Movies(movieId: 4, movieTitle: "Anadoluda", moviePicname: "birzamanlaranadoluda", moviePrice: 99.99)
        let movie5 = Movies(movieId: 5, movieTitle: "The Hateful Eight", moviePicname: "thehatefuleight", moviePrice: 56.99)
        let movie6 = Movies(movieId: 6, movieTitle: "The Pianist", moviePicname: "thepianist", moviePrice: 55.99)
        
        movies.append(movie1)
        movies.append(movie2)
        movies.append(movie3)
        movies.append(movie4)
        movies.append(movie5)
        movies.append(movie6)
        
    }


}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,CollectionViewCellMoviesProtocol{
    func addBucket(indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        print("\(movie.movieTitle!) filmi sipariş edildi")
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let movie = movies[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! CollectionViewCellMovies
        
        cell.movieNameLabel.text = movie.movieTitle!
        cell.moviePriceLabel.text = "\(movie.moviePrice!) TL"
        cell.movieImageView.image = UIImage(named: movie.moviePicname!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 1.5
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        print("\(movie.movieTitle!) filmi secildi")
    }
    
}
