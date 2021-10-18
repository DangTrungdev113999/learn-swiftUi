var startWarCharacters = ["leia Organa", "Anakin Skywalker", "luke Skywaler", "Ray", "R2-D@", "Qui-won"]





func handleSort(s1: String, s2: String) -> Bool {
    return s1 < s2
}

var sortedStarWarCharacters = startWarCharacters.sorted(by: handleSort)

// var sortedStarWarCharacters = startWarCharacters.sorted(by: {
//     (s1: String, s2: String) -> Bool in
//         return s1 < s2
// })


// var sortedStarWarCharacters = startWarCharacters.sorted(by: {
//     (s1, s2) -> Bool in
//         return s1 < s2
// })

// var sortedStarWarCharacters = startWarCharacters.sorted(by: {
//     $0 > $1
// })


print(startWarCharacters)

let someNumbers = [1,3,4,5,6,8]
var squareNumbers = someNumbers.map { (someNumber) -> Int in
    return someNumber * someNumber
}

print(someNumbers)

// func doTask1(completionHandler: () -> Void) {
//     print("do task 1")
//     completionHandler()
// }

// doTask1 {
//     print("This task do after task 1")
// }


// func doTask1(completionHandler: @escaping(_ responseString: String, _ errorCode) -> Void) {
//     print("do task 1")
//     completionHandler("success", 200)
// }

// doTask1 { (responseStr, errCode) in
//     print("This task do after task 1")
// }



// let doAhardWord = {
//     print("This is a hard word")
// }

// let anotherHardWord = doAhardWord // referance type

// print("Do task A")

// anotherHardWord()


func doSomeWord(hardWork: @autoclosure() -> Void) {
    print("before autoclosure")
    hardWork()
}   

doSomeWord(hardWork: print("I do hard work. Iam inside autoclose"))