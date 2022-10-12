import UIKit

var greeting = "Hello, playground"


struct Circle {
    
    
    var radius : Double = 0
    var area : Double {
        
        get{
            return (Double.pi * radius * radius)
         }
        set
        {
            radius = sqrt(newValue / Double.pi)
        }
    }
    
    
}

var amount = Circle(radius: 5)
print("Area of circle is \(amount.area)")

amount.area = 25
print("Radius of circle is \(amount.radius)")

