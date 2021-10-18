// truy  cập struc giống như arry trong js 

struct MutiplicationTable {
    let miltiplier: Int
    subscript(index: Int) -> Int {
        return miltiplier * index
    }
}

let mt = MutiplicationTable(miltiplier: 4)
for i in 1...10 {
    print("\(i) miltoplies by 4 is :\(mt[i])")
}

// mt[2] = 100 read only so it have error

struct Animalmatrix {
    var animals = {
        ["🦌", "🦀", "🦅", "🪱"],
        ["🦕", "🐷", "🐀"],
        ["🦕", "🐷", "🐀"]
    }

    subscript(row: Int, column: Int) -> String {
        get {
            assert(animals[row][column] != nil, "no animal found")
            return animals[row][column]
        }
        set {
            assert(animals[row][column] != nil, "Cannot set animal value because it is out of range")
            animals[row][column] = newValue
        }
    }
}

var am = AnimalMatrix();
print(am[2,1])