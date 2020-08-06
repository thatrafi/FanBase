//
//  Actors.swift
//  FanBase
//
//  Created by rafiudin on 05/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import Foundation
struct Actors {
    private(set) public var name : String
    private(set) public var image : String
    private(set) public var id_movie : Int
    
    init(actorName : String, actorImg : String, actorMovie : Int) {
        self.image = actorImg
        self.name = actorName
        self.id_movie = actorMovie
    }
}
