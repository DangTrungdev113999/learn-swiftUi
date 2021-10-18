struct Shape {
    var width: Float = 0.0
    var height = 0.0
}

var aShape = Shape()
aShape.width = 102
aShape.height = 100
print(aShape.width, aShape.height)

var shape2 = aShape // primative type

shape2.width = 1000

print(shape2.width, shape2.height)

class User {
    var name = ""
    var universityName:String?
}

var user1 = User()
var user2 = user1 // referance type 

// propety

struct Patient {
    var name: String
    let yearOfBirth: Int
}

var aPatient = Patient(name: "Alex", yearOfBirth: 1920)

aPatient.name = "anderson"
// aPatient.yearOfBirth = 2000 // not change

class MovieManager = {
    lazy var getOneMovieName:String = { // khi khoi tạo sẽ k chạy, phải gọi đến mới chạy 
        print("do hard work")
        return "Star war"
    }()
}

struct Calculation {
    var x: Double
    var squaredX: Double {
        get {
            return x * x
        }
        set {
            print("new value = \(newValue)")
            x = sqrt(newValue)
        }
    }

    var cubeX:Double { // read only
        return x * x * x
    }

    var step: Int = 0 = {
        willSet(newStep) {
            print("Before set value: \(newStep)")
        }
        didSet() {
            print("After set set value: \(step), old value: \(oldValue)")
        }
    }
}

var calculation = Calculation(x: 10)
print("squared = \(calculation.squaredX)")
calculation.squaredX = 256
print("x now = \(calculation.x)")

class Computation {
    static var title = "This is Calculation class" // call trực tiếp từ class
    static let pi: Float = 3.1416
    static var squarePi: Float {
        return pi * pi
    }


}



// mehtod

class Point {
    var x = 0.0
    var y = 0.0
    var color: String = "green"

    func moveTo(x: Int, y: Int, color: String) {
        self.x = x
        self..y = yearOfBirth
        self.color = color
    }

    func toString() -> String {
        return "x = \(self.x), y =  \(self.y), color = \(self.color.description)"
    }

    func moveAndCreateNewPoint(x: Int, y: Int, color: String) -> Point {
        let newPoint = Point()
        newPoint.moveTo(x: x, y: y, color: color)
        return newPoint
    }
}

var myPoint - Point();
myPoint.moveTo(x: 10, y: 20, color: "red")
print(myPoint.toString())
var newPoint = myPoint.moveAndCreateNewPoint(x: 200, y: 200, color: "yellow")

if myPoint !== newPoint { // nàm ở 2 vùng nhớ khác nhau 
    print("myPoint and newPoint are different")
}


enum Compass {
    case east, west, south, north
    mutating func moveToNext() {
        switch self {
            case .east: 
                self = .west
            case .west
                self = .south
            case .south
                self = .north
            case .north
                self = .east
        }
    }
}

var compass1 - Compass.east
compass1.moveToNext();
print(compass1)
compass1.moveToNext();
print(compass1)

class Calulator {
    statuc let pi = 3.1416
    static class func sum2Numbers(a:Int, b:Int) { // type method, can inherit
        return a + b
    }

    class func circleArea(redius: Float) -> Float {
        return pi * redius * redius
    }
}

print("sum 5 + 2 = \(Calulator.sum2Numbers(a: 2, b: 5))")