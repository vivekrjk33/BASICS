import UIKit

var greeting = "Hello, playground"


func comparition() -> String {

    if 1 == 2 || 3 == 2
{
    
   return "yo"
}
    else {
        return "no"
    }
}

comparition()

var bookTitle1 = "learn and grow bro...."
var bookTitle2 = "learn and grow bro...."

if bookTitle1 != bookTitle2 {
    
    print("Need to fix the spelling before print")
}
else if bookTitle2.count > 35 {
    
    print("find the new title for the book")
}
else {
    
    print("perfect")
}


if true == false || true == true  || true == false
{
    print("false")

}

