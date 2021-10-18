for _ in 1..<10 {
    // print("index = \(index)")
    // print("hello !")
}

for index  in stride(from: 1, to: 12, by: 0.5) {
    print("index = \(index)")
}

var startValue = 0

// while startValue < 100 {
//     print("startValue = \(startValue)")
//     startValue = startValue + 1

//     if startValue == 5 {
//         // continue
//         break
//     }
// }

repeat {
    print("startValue = \(startValue)")
    startValue = startValue + 1
} while startValue < 100


let yourPoint = 2
switch youPoint {
    case 0..<2:
        print("very bad")
    case 2..<5:
        print("ok 1")
    case 5..<7:
        print("ok 2")
    case 9..10:
        print("ok 3")
}

switch name {
    case "ok1", "ok2", "ok3"
        print("ok")
    case "let1", "let2", "let3"
        print("let")
        fallthrough // đi tiếp 
    default
        print("variable")
}