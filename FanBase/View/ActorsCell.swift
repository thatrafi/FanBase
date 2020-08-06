//
//  ActorsCell.swift
//  FanBase
//
//  Created by rafiudin on 05/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import UIKit

class ActorsCell: UICollectionViewCell {
    @IBOutlet weak var actorname : UILabel!
    @IBOutlet weak var actorimg : UIImageView!
    
    func updateViews (actor : Actors){
        actorname.text = actor.name
        actorimg.image = UIImage(named: actor.image)
    }
}
