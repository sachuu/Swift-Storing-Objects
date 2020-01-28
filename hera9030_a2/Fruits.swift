//
//  Fruits.swift
//  hera9030_a2
//
//  Created by Sachintha Herath Mudiyanselage on 2020-01-28.
//  Copyright © 2020 Sachintha Herath Mudiyanselage. All rights reserved.
//

import Foundation

struct Fruit{
    let fruitImageName: String
    let fruitName: String
    var likes = 0
    var dislikes = 0
    
    init(fruitName: String, fruitImageName: String){
        self.fruitImageName = fruitImageName
        self.fruitName = fruitName
    }
}




