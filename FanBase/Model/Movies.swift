//
//  Movies.swift
//  FanBase
//
//  Created by rafiudin on 05/08/20.
//  Copyright © 2020 rafiudin. All rights reserved.
//

import Foundation
struct Movies{
    
    private(set) public var id : Int
    private(set) public var title : String
    
    init(id: Int,title : String) {
        self.id = id
        self.title = title
    }
}
