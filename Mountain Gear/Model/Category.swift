//
//  Category.swift
//  Mountain Gear
//
//  Created by Mark Rabins on 9/13/19.
//  Copyright © 2019 Mark Rabins. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
    
}
