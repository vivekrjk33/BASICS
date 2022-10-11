import UIKit

var greeting = "Hello, playground"


// TTTTTTUUUUUUPPPPPPPLLLLLLLLEEEEEEEE(Tuple)

typealias validDetails = (errorMessage : String?, isValid : Bool)

func isvalidUsername(username: String) -> validDetails {
    
    if username.isEmpty {
        return ("Username is empty", false)
    }
    else{
        
        return (nil, true)
    }
    
}


let isValidUsername1 = isvalidUsername(username: "")
print("isValidName is" , isValidUsername1)
print(isValidUsername1.errorMessage!)
print(isValidUsername1.isValid)

let isValidUserNmae2 = isvalidUsername(username: "Vivek")
print("isValidUsername2", isValidUserNmae2)



func isvalidPassword(password: String) -> validDetails {
    
    if password.count < 3 {
        return ("password is too short" , false )
    }
    else if password.count > 20 {
        return ("password is too long", false)
    }
    
    else {
        return ("valid password", true)
    }
}


let password = isvalidPassword(password: "12")
print("password", password)
print("password", password.errorMessage!)


let password2 = isvalidPassword(password: "vivisdvxhyvkfshvjksfhkshfvjfviv")
print("password", password2.errorMessage!)
