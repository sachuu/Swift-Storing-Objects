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

    init(){
        let avacadoImage = "images/avacado"
        let bananaImage = "images/banana"
        let strawberryImage = "images/strawberry"
        let tomatoImage = "images/tomato"

        let avacado = Fruit(fruitName: "avacado", fruitImageName: avacadoImage)
        let banana = Fruit(fruitName: "banana", fruitImageName: bananaImage)
        let strawberry = Fruit(fruitName: "strawberry", fruitImageName: strawberryImage)
        let tomato = Fruit(fruitName: "tomato", fruitImageName: tomatoImage)
        
        FruitCollection.collection.append(avacado)
        FruitCollection.collection.append(banana)
        FruitCollection.collection.append(strawberry)
        FruitCollection.collection.append(tomato)
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
