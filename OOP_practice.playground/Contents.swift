import UIKit

class Person {
    let name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let kim: Person = Person(name: "JSS")
print(kim.name)

kim.age = 28
print(kim.age!)

enum Student {
    case elem, mid, high
    case none
    
    init(koreanAge: Int) {
        switch koreanAge {
        case 8...13:
            self = .elem
        case 14...16:
            self = .mid
        case 16...19:
            self = .high
        default:
            self = .none
        }
    }
    
    init(born: Int, currYear: Int) {
        self.init(koreanAge: currYear - born + 1)
    }
    
    init() {
        self = .none
    }
}

let firstPerson = Student(koreanAge: 17)
let secondPerson = Student(born: 1991, currYear: 2018)
var thirdPerson = Student()



