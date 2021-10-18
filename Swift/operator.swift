let (width, height) = (800, 600);

print(width)

let age: Int? = nil
let myAge = age ?? 20

print(myAge)

for index in 1..<5 {
    print(index)
}

let range = ...7
print(range.contains(6))

let animals = ["cat", "dog", "tiger", "dinosaur"]
for animal in animals[...2] {
    print(animal)
}