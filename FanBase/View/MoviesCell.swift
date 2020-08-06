//
//  MoviesCell.swift
//  FanBase
//
//  Created by rafiudin on 05/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import UIKit

class MoviesCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var titleMovie: UILabel!
    
    @IBOutlet weak var actorCollection : UICollectionView!
    
    var actors = [Actors]()
    var sender : UIViewController!
    
    func updateViews(moviesData : Movies,sender : UIViewController){
        actors = DataService.instance.getActors(moviesId: moviesData.id)
        titleMovie.text = moviesData.title
        self.sender = sender
    }
    
    override func awakeFromNib() {
        actorCollection.dataSource = self
        actorCollection.delegate = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorsCell", for: indexPath) as? ActorsCell {
            cell.updateViews(actor: actors[indexPath.row])
            return cell
        }else{
            return ActorsCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let actor = actors[indexPath.row]
        sender.performSegue(withIdentifier: "ProfileVC", sender: actor)
    }
    
    
}
