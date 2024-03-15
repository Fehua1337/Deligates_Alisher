import Cocoa

class Parent {
    var name: String
    var age: Int
//    var child: Child
    var delegate: CanCleanHouse?
    
    init(name: String, age: Int/*, child: Child*/) {
        self.name = name
        self.age = age
    }
    
    func cleanHouse() {
        print("function was called")
        delegate?.cleanHouse()
    }
}

protocol CanCleanHouse {
    func cleanHouse()
}

class Child: CanCleanHouse {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
        
    func cleanHouse() {
        print("\(name) is cleaning the house")
    }
}

class Child2: CanCleanHouse {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func cleanHouse() {
        print ("\(name) is cleaning the house")
    }
}


class RobotCleaner: CanCleanHouse {
    func cleanHouse() {
        print("Robot is cleaning the house")
    }
}


//let daughter = Child(name: "Shynar")
//let mom = Parent(name: "Aigyl", age: 40, child: daughter)

//mom.child.cleanHouse()


//mom.delegate = RobotCleaner()
//mom.cleanHouse()
let child = Child(name: "Arman")
let mom = Parent(name: "Aizhan", age: 30)
let child2 = Child2(name: "Dauren")
mom.delegate = child
mom.cleanHouse()
mom.delegate = child2
mom.cleanHouse()
