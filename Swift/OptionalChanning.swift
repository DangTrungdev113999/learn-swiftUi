class User {
    var name: String
    var readingBook: Book?
    int(name: String) {
        self.name = name
    }
}

class Book {
    var numberOfPages = 1000
}

var mrTrung = User(name: "Dang The Trung")
mrTrung.readingBook = Book()

if let numberOfPages = mrTrung.readingBook?.numberOfPages {
    print("Book of ")
} else {
    print("Failded to get number of page")
}

var testScores = [
    "Hoang" : [60, 70, 80], 
    "Alex" : [79, 94, 81]
]

testScores["Hoang"]?[0] = 99

testScores["Alex"]?[0] += 1
