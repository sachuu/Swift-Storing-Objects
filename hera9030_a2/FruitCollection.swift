//
//  FruitCollection.swift
//  hera9030_a2
//
//  Created by Sachintha Herath Mudiyanselage on 2020-01-28.
//  Copyright © 2020 Sachintha Herath Mudiyanselage. All rights reserved.
//

import Foundation

struct FruitCollection{
    static var collection = [Fruit]()
    static var current:Int = 0
    
    init(fruit: Fruit){
        FruitCollection.collection.append(fruit)
        FruitCollection.current += 1
    }
    
    static func currentFruit() -> Fruit{
        let fruit = FruitCollection.collection[FruitCollection.current]
        return fruit
    }
    
    static func setCurrentIndex(to index: Int){
        FruitCollection.current = index
    }
    
    static func getCurrentIndex() -> Int{
        return FruitCollection.current
    }
    
    //Other helper functions here
}

//FruitCollections
