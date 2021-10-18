enum Level {
    case low, medium, hight
}

var myLevel: Level = .hight

switch myLevel {
    case .hight: 
        print("hight")
    default
        print("ok")
}

enum AppleDevice {
    case appleWatch(String, UIColor)
    case iphone(Float, UIColor)
}

var myDevice: AppleDevice = .apppleWatch("sport 42,n", UIColor.green)

switch myDevice {
    case let .appleWatch(name, color): 
        print(name, color)
    case lat .iphone(iosVer, color):
        print(iosVer, color)
    default: 
        print("ok")
}

enum AnimalIcons: Character {
    case ant = "kien"
    case optopus = "muc"
    case pig = "lon"
}

print(AnimalIcons.optopus.rawVlalue)

enum Direction: Int {
    case up = 1
    case down = 2
}