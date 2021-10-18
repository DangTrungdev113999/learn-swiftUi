// final class Animal {  nếu có final thì sẽ k kế thừu đc
class Animal { // base class
    var name: String = ""
    func eat() {
        print("animal is eating...")
    }
    // final var description: String { nếu có final thì sẽ k kế thừu đc, k thể tồn tại final và override
    var description: String {
        return "This is an animal named: \(self.name)"
    }
}


class Cat: Animal { // subclass
    var canClimb: Bool = true
    func sayMeomeo() {
        print("I am saying meo meo")
    }

    override func eat() {
        super.eat() // kế thừ lại , nếu không có sẽ thay thế luôn
        print("Cat is eating ...")
    }

    override var description: String {
        return "Cat's name is: \(super.description), can climb = \(self.canClimb)"
    }
}
let animal = Animal()
var jerry = Cat();

jerry.name = "Mina"
jerry.eat()

print(jerry.description) // read only
