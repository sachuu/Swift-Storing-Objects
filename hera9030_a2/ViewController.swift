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


let apple = Fruit(fruitName: "avacado", fruitImageName: avacadoImage)
let banana = Fruit(fruitName: "banana", fruitImageName: bananaImage)
let strawberry = Fruit(fruitName: "strawberry", fruitImageName: strawberryImage)
let tomato = Fruit(fruitName: "tomato", fruitImageName: tomatoImage)

class ViewController: UIViewController {

    @IBOutlet weak var fruitView: UIImageView!
    @IBOutlet weak var downLabel: UILabel!
    @IBOutlet weak var upLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextPress(_ sender: Any) {
        FruitCollection.current += 1
        
        if(FruitCollection.current == 0){
            fruitView.image = UIImage(named: FruitCollection.collection[FruitCollection.current].fruitImageName)
        }
        if(FruitCollection.current == 1){
             fruitView.image = UIImage(named: FruitCollection.collection[FruitCollection.current].fruitImageName)
        }
        if(FruitCollection.current == 2){
             fruitView.image = UIImage(named: FruitCollection.collection[FruitCollection.current].fruitImageName)
        }
        if(FruitCollection.current == 3){
            FruitCollection.current = 0
        }
    }
    
    @IBAction func upButtonPress(_ sender: Any) {
        upCount += 1
        upLabel.text = String(upCount)
    }
    
    @IBAction func downButtonPress(_ sender: Any) {
        downCount += 1
        downLabel.text = String(downCount)
    }
}
