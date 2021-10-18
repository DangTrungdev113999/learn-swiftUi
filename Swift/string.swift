let welcome = """
    This is may tutorial channel.
    "How long have you done this?". "4 months"
    this is a 3 quotes \"\"\"
"""

print(welcome)

let aBlankString = String()
print(aBlankString)

if aBlankString.isEmpty == true {
    print("Is is empty")
}

var aMutableString = "This. a man. "

aMutableString += "This is a woman. "

for eachCharacter in aMutableString {
    print(eachCharacter)
}

let dollarMark: Character = "$"
aMutableString.append(dollarMark)

print(aMutableString)

let ampersandMark = "\u{0018}"

print(ampersandMark)

var welcomeString = "Hello World!"

// for index in welcomeString.indices {
//     print("index = \(index)") // kiểu  index k phải kiểu interger
//     print("each character index = \(welcomeString[index])")
    
// }


print(welcomeString[welcomeString.startIndex])
print(welcomeString[welcomeString.index(after: welcomeString.startIndex)])
print(welcomeString[welcomeString.index(before: welcomeString.endIndex)])

print(welcomeString[welcomeString.index(welcomeString.startIndex, offsetBy: 4)])

welcomeString.insert("A", at: welcomeString.endIndex)

print(welcomeString)

welcomeString.insert(contentsOf: "AAA", at: welcomeString.index(before: welcomeString.endIndex) )

print(welcomeString)

// cut subString

let someString = "I am bot"
let indexFrom = someString.startIndex
let indexTo = someString.index(someString.startIndex, offsetBy: 5)

let subString = someString[indexFrom...indexTo]

print(someString)

// clone string
let subString2 = String(subString)


let cat1 = "cat"
let cat2 = "cat"

if cat1 == cat2 {
    print("the same cat")
    
}

// check perfix, hasSuffix

let stringWidthPrefix = "mr trung make this line code"
 print(stringWidthPrefix.hasPrefix("mr trung")) 
print(stringWidthPrefix.hasSuffix("code")) 
print(stringWidthPrefix.uppercased().hasSuffix("Code".uppercased())) 
