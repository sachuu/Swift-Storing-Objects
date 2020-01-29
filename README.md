**Storing Data Using Objects**

This project reflects a more efficient way to store data, through objects / structures. It also includes local storage 
so that the data persists within the app. 

**The project consists of storing fruit objects within a structure that stores a list of objects**

**Fruit Object:**

```
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
```

**Structure that stores a list of objects:**

```
struct FruitCollection{
    static var collection = [Fruit]()
    static var current:Int = 0
    
   init(fruit: Fruit){
        FruitCollection.collection.append(fruit)
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
```

**Example of Instance:**

```
let avacado = Fruit(fruitName: "avacado", fruitImageName: avacadoImage)
let banana = Fruit(fruitName: "banana", fruitImageName: bananaImage)
let strawberry = Fruit(fruitName: "strawberry", fruitImageName: strawberryImage)
let tomato = Fruit(fruitName: "tomato", fruitImageName: tomatoImage)

//Initializing each Fruit in the Fruit Collections ObjectList on load
override func viewDidLoad() {
   super.viewDidLoad()
   FruitCollection(fruit: avacado)
   FruitCollection(fruit: banana)
   FruitCollection(fruit: strawberry)
   FruitCollection(fruit: tomato)
}
```
**Storing Data** 

**In Scene Delegate**
```
 func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded 
    UserDefaults.standard.set(FruitCollection.getCurrentIndex(), forKey: "currentIndex")
    }
```

**In View Controller**

```
override func viewDidLoad() {
   if let i = UserDefaults.standard.integer(forKey:
      "currentIndex") as Int? {
       print("Fruits existed with index: \(i)")
       FruitCollection.setCurrentIndex(to: i) //restore the fruit
      }
      let fruit = FruitCollection.currentFruit()
   fruitView.image = UIImage(named: fruit.fruitImageName)
}
```
