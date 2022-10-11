import UIKit

class Employee {
    
    //Properties
    
    var id : Int?
    var name : String?
    var salary : Float?
    
    
    
    init()
    {
        id = 1
        name = "ramesh"
        salary = 999.00
        
    }
    
    // behaviour
    
    func display() -> Void {
        print(id!," - ",name!," - ",salary!)
    }
    
    func taxOnSalary(rate : Float) -> Void {
        let tax = salary! * rate/100
        print("Total Tax :", tax)
    }
}

var emp:Employee = Employee()
emp.display()

var emp1 = Employee()
emp1.id = 2
emp1.name = "raju"
emp1.salary = 222.00
emp1.display()

var emp2 = Employee()
emp2.id = 3
emp2.name = "rocky"
emp2.salary = 666.00
emp2.display()

var emp3 = Employee()
emp3 = emp1
emp3.id = 9
emp3.display()

var empArry:[Employee] = [emp,emp1]
empArry.append(emp2)

print(empArry)

//empArry[0].display()

for emp5 in empArry{
    emp5.display()
    print("tax on salary of ", emp5.name! , "is", emp5.taxOnSalary(rate: 2))
}
