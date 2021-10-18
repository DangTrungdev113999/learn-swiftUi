//  Định nghĩa các hàm , phương thức trong protocol, bất kì 1 class hay struct sử dụng protocol đấy thì phải dùng method và property đó

protocol DetailInformationProtocol {
    // Property Requirements
    var fullName: String { get }
    // Method Requirements
    func showDetail() -> String
}

class User: DetailInformationProtocol {

    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return firstName + lastName
    }
    
    func showDetail() -> String {
        return "FirstName: \(self.firstName), lastName = \(self.lastName)"
    }
}

var mrTrung = User(firstName: "Dang", lastName: "The Trung")
//  Định nghĩa các hàm , phương thức trong protocol, bất kì 1 class hay struct sử dụng protocol đấy thì phải dùng method và property đó

protocol DetailInformationProtocol {
    // Property Requirements
    var fullName: String { get }
    // Method Requirements
    func showDetail() -> String
}

class User: DetailInformationProtocol {

    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return firstName + lastName
    }
    
    func showDetail() -> String {
        return "FirstName: \(self.firstName), lastName = \(self.lastName)"
    }
}

var mrTrung = User(firstName: "Dang", lastName: "The Trung")

protocol ToggleProtocol {
    // Mutating Method requirements
    mutating func toggle()
}

enum Switcher: ToggleProtocol {
    case on, off
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on :
            self = .off
        }
    }
}

var lightSwitch = Switcher.off
lightSwitch.toggle()
lightSwitch.toggle()

// Initializer Requirements
protocol IInitializationProtocol {
    init(name: String)
}

class Animal {
    
}

// class Bird inherited from Animal and conforms protocol IInitializationProtocol
class Bird: Animal, IInitializationProtocol {
    var name: String
    required init(name: String) {
        self.name = name
    }
}
