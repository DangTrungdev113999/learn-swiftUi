struct Point {
    var x, y: Double
    init() {
        x = 20
        y = 20
    }
}

var p = Point()

struct Energy {
    var calories: Float
    init(fromCalories calories: Float) { //fromCalories như một cái nhẫn - label
        self.calories = calories
    }
    init(fromJoules joules: Float) {
        self.calories = 0.000239006 * joules
    }
    init(_ joules: Float) {
        self.calories = 0.000239006 * joules
    }
}

let energy1 = Energy(fromCalories: 110.0)
print(energy1.calories)
let energy2 = Energy(fromJoules: 200.0)

// xem lại video 

