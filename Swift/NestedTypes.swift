struct Fruit {
    enum RedFruit:Character {
        case apple = "🍎", strawberry = "🍓", chiliPepper = "🌶"
        enum Size: Int {
            case small = 1, medium, big
        }
    }

    var myFruit: RedFruit? 
    var myFruitSize: RedFruit.Size?

    // var description: String {
    //     return "myFruit = \(myfruit?.rawValue), size = \(myFruitSize?.rawValue)"
    // }
}

print(Fruit.RedFruit.strawberry.rawValue)

var fruit = Fruit()
fruit.myFruit = Fruit.RedFruit.chiliPepper
fruit.myFruitSize = Fruit.RedFruit.Size.small

