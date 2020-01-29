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
var FruitBasket = FruitCollection()

class ViewController: UIViewController {

    @IBOutlet weak var fruitView: UIImageView!
    @IBOutlet weak var downLabel: UILabel!
    @IBOutlet weak var upLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        FruitBasket = FruitCollection()
        if let i = UserDefaults.standard.integer(forKey:
            "currentIndex") as Int? {
            print("Fruits existed with index: \(i)")
            FruitCollection.setCurrentIndex(to: i) //restore the fruit
            }
            let fruit = FruitCollection.currentFruit()
        fruitView.image = UIImage(named: fruit.fruitImageName)
    }
    
    //Avacado 0
    //Banana 1
    //Strawberry 2
    //Tomato 3
    
    @IBAction func nextPress(_ sender: Any) {
        FruitCollection.current += 1
        
        if(FruitCollection.current == 4){
            FruitCollection.current = 0
        }
        
        let currFruit = (FruitCollection.collection[FruitCollection.current])
        
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
    }
    
    @IBAction func upButtonPress(_ sender: Any) {
        FruitCollection.collection[FruitCollection.current].likes += 1
        upLabel.text = String(FruitCollection.collection[FruitCollection.current].likes)
    }
    
    @IBAction func downButtonPress(_ sender: Any) {
        FruitCollection.collection[FruitCollection.current].dislikes += 1
        downLabel.text = String(FruitCollection.collection[FruitCollection.current].dislikes)
    }
}
