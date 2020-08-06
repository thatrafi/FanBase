//
//  DataService.swift
//  FanBase
//
//  Created by rafiudin on 05/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let dataMovies = [
        Movies(id: 1,title: "Call Me By Your Name"),
        Movies(id: 2,title: "Avengers Infinity War")
    ]
    
    private let dataActorsCMBYN = [
        Actors(actorName: "Armie Hammer", actorImg: "armie.jpg", actorMovie: 1),
        Actors(actorName: "Timotie Chalamet", actorImg: "timoti.png", actorMovie: 1)
    ]
    
    private let dataActorsAIW = [
        Actors(actorName: "Chris Hemsworth", actorImg: "chrish.jpg", actorMovie: 2),
        Actors(actorName: "Chris Pratt", actorImg: "chrisp.jpg", actorMovie: 2),
        Actors(actorName: "Tom Holand", actorImg: "tomh.jpg", actorMovie: 2),
        Actors(actorName: "Tom Hiddleston", actorImg: "tomhid.png", actorMovie: 2)
    ]
    
    func getMovies() -> [Movies] {
        return dataMovies
    }
    
    func getActors(moviesId : Int) -> [Actors]{
        switch moviesId {
        case 1:
            return dataActorsCMBYN
        case 2:
            return dataActorsAIW
        default:
            return dataActorsCMBYN
        }
    }
}
