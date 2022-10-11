import UIKit

let a = {
    print("HomeSmart DG")
}
a()

//Closure With parameters

let b : (String,String) -> () = { name,user in
    
    print("Welcome",name,user)
}

b("Heater", "Geaser")

//Closure with Return Type

let c : (String,String) -> (String) = {state,city in
    print("Details",state,city)
    
    return city
    
}

let e = c("Haryana", "Faridabad")
print(e)
