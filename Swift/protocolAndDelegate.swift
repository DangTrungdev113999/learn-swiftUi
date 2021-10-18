
import UIKit

// Delegation , là 1 protocol nhưng nhiều cách sử dụng hay ho hơn
protocol ExampleDelegate {
    func method1()
}

// Delegation enables a class or structure to delegate some of its responsibilities to an instance of another type
// Class that have delegate property

class ExampleClass {
    var delegate: ExampleDelegate?
    func reloadData() {
        print("running reload data...")
        print("do some tasks in 1 seconds...")
        delegate?.method1()
        print("do some tasks in 3 seconds...")
    }
}

class ClassConformDelegate: ExampleDelegate {
    var aProperty: ExampleClass
    init(aProperty: ExampleClass) {
        self.aProperty = aProperty
        self.aProperty.delegate = self
        self.aProperty.reloadData()
    }
}

// Adding Protocol conformance with an Extension
extension ClassConformDelegate {
    // Implement delegate function
    func method1() {
        print("ClassConformDelegate calls method1")
    }
}

let a  = ClassConformDelegate(aProperty: ExampleClass())


// Optional Protocol Requirements
@objc protocol ExampleProtocol {
    @objc optional func method3()
    @objc optional var property3: Int { get }
}

class AnExample: ExampleProtocol {
    // No need to implement method3 or property3
}

// khá loàng ngoàng và khó hiểu chắc phải xem lại nhiều lần mói hiểu được :)) 
