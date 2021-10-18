func sum2Numbers(a: Int, b: Int) -> Int {
    let c = a + b 
    return c
}

// sum2Numbers(a: 2, b: 4)

func sayHello()  {
    // print("hello, how are you ?")
}

func calculateSumAndMultiply(a: Double, b: Double) -> (sum: Double, multiply: Double)? {
    let result = (a + b, a * b)
    return result
}

if let value = calculateSumAndMultiply(a: 2, b: 3) {
    print(value)
} 

func multiply2Numbers(_ a: Float, _ b: Float) -> Float {
    return a * b
}

print(multiply2Numbers(10.10, 20.0))

// func getrectangleArea(width: Double, height: Double = 100) -> Double {

// }

func sumMultipleNumbers(_ numbers: Double...) -> Double {
    var total: Double = 0.0
    for number in numbers {
        total = total + number
    }
    return total 
}

print(sumMultipleNumbers(1,3,4,5,6))

var aString = "I am a man"
print("String before: \(aString)")
func inoutFunction(_ a: inout String) { // inout - can be changed after running function
    a = "I am a hero"
}

inoutFunction(&aString)
print("String after: \(aString)")
