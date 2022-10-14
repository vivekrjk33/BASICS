import UIKit

struct ComplexTask {
    
   static var firstElement = 1
    static var result = 0
    
   static func doComplexTask() -> Int{
        
        var task:[Int] = []
        
        for i in firstElement...5000 {
            task.append(i)
        }
        
        result = task.first!
        return result
    }
}


struct Employee {
    // if there i will use the lazy keyword when we will change the value their will no change in the it will return same value as in the first.
    
//    lazy var complextask : Int =  {
//        ComplexTask.doComplexTask()     //Lazy property
//    }()
    
    var complextask : Int {
        ComplexTask.doComplexTask() // computed property
    }
}

var objEmployee = Employee()
print(objEmployee.complextask)

ComplexTask.firstElement = 100
debugPrint("updated value \(objEmployee.complextask)")
