import UIKit



class Employee {
    
    
    var name : String
    var id : Int
    
    init(name:String,id:Int){
        
        self.name = name
        self.id = id
        
    }
}

let object1 = Employee.init(name: "Vivek", id: 59)
//let object2 = Employee(name: "Ravi", id: 90)

let object2 = object1

print(object1.name)
print(object1.id)

if object1 === object2 {
    print("identical")
}else {
    print("Not Identical")
}

object2.name = "Pankaj"

print(object2.name)
print(object1.name)


