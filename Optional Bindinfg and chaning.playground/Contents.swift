import UIKit

var greeting = "Hello, playground"

class Address {
    
    var state : String?
    var city  :String?
    var village :String?
    var zipcode :Int?
    
    init(state:String?, city:String?, village:String?, zipcode: Int?){
        
        self.state = state
        self.city = city
        self.village = village
        self.zipcode = zipcode
    }
}

class person {
    
    var firstName:String
    var middleName:String?
    var lastName:String?
    var address:Address?
    
    init(firstName:String,middleName:String?,lastName:String?, address: Address?){
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
        self.address  = address
    }
    
}

let address = Address(state: "Haryana", city: "fbd", village: nil, zipcode: 565)
let obj =  person(firstName: "Vivek", middleName: "rjk", lastName: nil, address: address)
print(obj.firstName)
print(obj.middleName)
print(obj.lastName)


//Forced unwrap
print(obj.middleName!)

//Nil coalescing

print(obj.middleName ?? "")


//Optional Binding

using If let & guard let

if let middle = obj.lastName{
    print(middle)
}
else{

    print("There is no last name")
}


//using guard let

func getValue() {
guard let middle1 = obj.lastName else {return}
print("there is last name11 \(middle1)")
}

getValue()



//If let
if let address = obj.address {
    
    if let state = address.state{
        print("if let \(state)")
    }
    else{
        print("state is nil")
    }
    
    if let city = address.city{
        print("if let \(city)")
    }
    else{
        print("city is nil")
    }
    
    if let village = address.village{
        print("if let \(village)")
    }
    else{
        print("village is nil")
    }
    
    if let zipcode = address.zipcode{
        print("if let \(zipcode)")
    }
    else{
        print("zipcode is nil")
    }
    
}


// GUARD LET

func getUserDetails() {
    
    guard let address = obj.address else { return }
    
    guard let state = address.state else {
        return
    }
    print("Guard let \(state)")
    
    guard let city = address.city else {
        return
    }
    print("Guard let \(city)")
    
    guard let village = address.village else {
        return
    }
    print("Guard let \(village)")
    
    guard let zipcode = address.zipcode else {
        return
    }
        print("Guard let \(zipcode)")
    }

getUserDetails()




//Optional Chaining : - we can get through both if let and guard let

func getChaining() {
    
    if let cityName = obj.address?.city {
        print("IF LET -- City Name is \(cityName)")
    }
    
    guard let cityName = obj.address?.city else {
        return
    }
    
    print("GUARD LET -- City name is \(cityName)")
    
}

getChaining()
