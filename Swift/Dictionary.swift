var user: [String: String] = ["name": "hoang", "email": "trung.dang@gmail.com"]
var myNumbers: [Int: String] = [10: "ten", 123: "one hundred and tweilve"]
// print(myNumbers[10])
print("user dictionary has \(user.count) keys")

user["email"] = "dangtrungdev113999@gmail.com"

print(user)

// if let oldEmail = user.updateValue = user.updateValue("dangtrung@gmail.com", forKey: "email") {
//     print("old email = \(oldEmail)")
// }

print(user)

// delete all 
// user = [:]

if  user.isEmpty {
    print("user dictionary is emty")
} else {
    print("user dictionary is not emty")
}


for (key, value) in user {
    print(key, value)
}

for key in user.keys {
    print("each key \(key)")
}

for value in user.values {
    print("each value \(value)")
}

let allKeys = [String](user.keys)
print("all keys = \(allKeys)")

let allValues = [String](user.values)
print("all values = \(allValues)")