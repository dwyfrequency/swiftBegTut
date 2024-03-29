import UIKit
// let is constant in swift
//class Person {
//    init(_ name:String, _ age:Int) {
//        self.name = name
//        self.age = age
//    }
//    init() {} // init is just a constructor
//    var name = ""
//    var age = 0
//}
//
//let p = Person("Jack", 27);
//print(p.name)
//let p1 = Person()
//print(p1.age)
//tst
class Person {
    var name = ""
}

class BlogPost {
    
    var fullTitle:String { // computed property
        if title != nil && author != nil {
            return title! + " " + author!.name
        } else if title != nil {
            return title!
        } else {
            return "No title"
        }
    }
    var title:String?
    var body:String = "hey"
    var author:Person?
    var numComments:Int = 0
    var paper:Int
    // you always have to specify a default value, declare it as optional ?, force unwrap it ! or set in init
    init() {
        paper = 12
    }
}

let b = BlogPost()
let p = Person()
p.name = "mopne"
b.author = p
//print(b.author); // prints optional
print(b.author!.name); // exclamation force unboxes optional
b.title = "Tomy"

if let titl = b.title { // safer
    print(titl)
}

print(b.fullTitle)
print(b.paper)

