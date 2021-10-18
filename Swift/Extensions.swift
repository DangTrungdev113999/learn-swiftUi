
extension Double {
    var meter: Double {
        return self
    }
    var kilometer: Double {
        return self * 1000
    }
    var centimeter: Double {
        return self * 10000
    }
    var minimeter: Double {
        return self * 1000.0
    }
}

let aDistance = 42.0.kilometer + 192.0.meter + 1234.0.centimeter + 352341.minimeter
print("aDistance = \(aDistance.meter) meters")

// 

struct Point {
    var x: Double
    var y: Double
}

extension Point {
    init(xValue: Double, yValue: Double) {
        self.x = xValue
        self.y = yValue
    }
}