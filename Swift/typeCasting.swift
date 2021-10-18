
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Song:MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

var mediaList: [MediaItem] = [
    Movie(name: "Star Wars", director: "George Lucas"),
    Movie(name: "Intersterller", director: "christopher Nolan."),
    Movie(name: "The Matrix", director: "lana Wachowshi"),
    Song(name: "A Hard Day a Night", artist: "The Beatles"),
    Song(name: "All Of me", artist: "john Legend")
]

var numberOfMovies = 0
var numberOfSongs = 0
for eachMedia in mediaList {
    if eachMedia is Song {
        numberOfSongs += 1
    } else if eachMedia is Movie {
        numberOfMovies += 1
    }
}

// print("numberOfMovies: \(numberOfMovies)")
// print("numberOfSongs: \(numberOfSongs)")

// for eachMedia in mediaList {
//     if let movie = eachMedia as? Movie {
//         // Downcasting
//         // print("Movie: \(movie.name), director: \(movie.director)")
//     } else if let song = eachMedia as? Song {
//         // print("Song: \(song.name), director: \(song.artist)")
//     } 
// }
// =======
// Type Casting for any and AnyObject
var things = [Any]() // an Array of any object
things.append(100)
things.append(200.0)
// things.append(M_PI) //mathematic PI
things.append("Star Wars")
things.append((1.0, 2.0)) // a tuple
things.append(Song(name: "All Of me", artist: "john Legend")) // an object
things.append({ (name: String) -> String in "Hello, \(name)" }) // a closure

print(things)



for thing in things {
    switch thing {
    case let anInteger as Int:
        print("An int value: \(anInteger)")
    case let aDouble as Double where aDouble > 0:
        print("An aDouble value: \(aDouble)")
    case let (x, y) as (Double, Double):
        print("this is a tuple with x = \(x) y = \(y)")
    case let aSong as Song: 
        print(aSong.name)
    case let StringInCloseure as (String) -> String: 
        print(StringInCloseure("Trung"))
    default:
        print("something else")
    }
}