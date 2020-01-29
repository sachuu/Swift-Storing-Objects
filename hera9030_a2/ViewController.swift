//
//  ViewController.swift
//  hera9030_a2
//
//  Created by Sachintha Herath Mudiyanselage on 2020-01-28.
//  Copyright © 2020 Sachintha Herath Mudiyanselage. All rights reserved.
//

import UIKit
var upCount = 0
var downCount = 0

var avacadoImage = "images/avacado"
var bananaImage = "images/banana"
var strawberryImage = "images/strawberry"
var tomatoImage = "images/tomato"

let avacado = Fruit(fruitName: "avacado", fruitImageName: avacadoImage)
let banana = Fruit(fruitName: "banana", fruitImageName: bananaImage)
let strawberry = Fruit(fruitName: "strawberry", fruitImageName: strawberryImage)
let tomato = Fruit(fruitName: "tomato", fruitImageName: tomatoImage)

class ViewController: UIViewController {

    @IBOutlet weak var fruitView: UIImageView!
    @IBOutlet weak var downLabel: UILabel!
    @IBOutlet weak var upLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        FruitCollection(fruit: avacado)
        FruitCollection(fruit: banana)
        FruitCollection(fruit: strawberry)
        FruitCollection(fruit: tomato)
    }
    //Avacado 0
    //Banana 1
    //Strawberry 2
    //Tomato 3
    
    @IBAction func nextPress(_ sender: Any) {
        let currFruit = (FruitCollection.collection[FruitCollection.current])
        FruitCollection.current += 1
        
        if(FruitCollection.current == 4){
            FruitCollection.current = 0
        }
        
        if(FruitCollection.current == 0){
            upLabel.text = String(currFruit.likes)
            downLabel.text = String(currFruit.dislikes)
        }
        
        if(FruitCollection.current == 1){
            upLabel.text = String(currFruit.likes)
            downLabel.text = String(currFruit.dislikes)
        }
        
        if(FruitCollection.current == 2){
            upLabel.text = String(currFruit.likes)
            downLabel.text = String(currFruit.dislikes)
        }
        
        if(FruitCollection.current == 3){
            upLabel.text = String(currFruit.likes)
            downLabel.text = String(currFruit.dislikes)
        }
        
        fruitView.image = UIImage(named: currFruit.fruitImageName)
        print(FruitCollection.current)
    }
    
    @IBAction func upButtonPress(_ sender: Any) {
        FruitCollection.collection[FruitCollection.current].likes += 1
    }
    
    @IBAction func downButtonPress(_ sender: Any) {
        FruitCollection.collection[FruitCollection.current].dislikes += 1
    }
}
