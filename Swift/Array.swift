var someDoubles = [Double]()
someDoubles.append(100.02)
someDoubles.append(3.2)
print(someDoubles.count)

// var tenIntegers = Array(reqeating: 5, count: 10)
// print(tenIntegers)

// concat arry 

// var arr = arr1 + arr2 + arr3

var smartPhones = ["iphone", "samsung galaxy", "htc one"]
smartPhones += ["nokia", "backberry"]
smartPhones.insert("xiaomi", at: 0)
smartPhones.remove(at: 2)
print(smartPhones)

for (index, value) in smartPhones.enumerated() {
    print("index = \(index), value = \(value)")
}