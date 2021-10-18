class Customer {
    let name: String
    init(name: String) {
        self.name = name
        print("\(self.name) is being initialized")
    }
    var house: House?
    deinit {
        print("\(self.name) is being deinitialized")
    }
}

// var customer1: Customer? 
// var customer2: Customer?
// var customer3: Customer?
// // customer1, customer1 , customer1 referance to nil
// customer1 = Customer(name: "Dang The Trung")
// customer2 = customer1
// customer3 = customer1
// /// 3 pointers to object Customer instance Name: Dang The Trung
// customer1 = nil
// customer2 = nil
// customer3 = nil
// // Customer instance Name: Dang The Trung được giải phóng 

class House {
    var address: String
    init(address: String) {
        self.address = address
    }
    weak var author: Customer?
    deinit {
        print("House at: \(address) is being deinitialized")
    }
}

var mrTrung: Customer?
var hisHouse: House?
mrTrung = Customer(name: "Dang The trung")
hisHouse = House(address: "64/177 Tran Cung, Ha Noi, Vietnam")

// week referance nghĩa là vẫn cỏ thể giải phong bộ nhớ đc trỏ đếm, còn strong là phải không có 
// đối tượng nào trỏ đến mới được giải phóng 

mrTrung!.house = hisHouse
hisHouse!.author = mrTrung

mrTrung = nil // giải phóng bộ nhớ đc vì chỉ có 1 weak reference trỏ đến 7
hisHouse = nil 


// unowned trỏ đến User trong trường hợp User có tuổi thọ lớn hơn hoặc bằng CreditCard 

class User {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("User: \(name) is being deinitialized")
    }
}

class CreditCard {
    let number: Int
    unowned var user: User
    init(number: Int, user: User) {
        self.number = number
        self.user = user
    }
    deinit {
        print("CreditCard: \(number) is being deinitialized")
    }
}

var mrAlex: user?
var CreditCard: CreditCard?

mrAlex = User(name: "Alex")
CreditCard = CreditCard(number: 123, user: mrAlex)

mrAlex!.card = CreditCard
mrAlex = nil // vì chỉ có unowned reference trỏ đến nên nó giải phóng đc, còn nếu có 1 strong reference trỏ đến thì sẽ k giải phóng đc

// Cần xem lại video nhiều lần ^^