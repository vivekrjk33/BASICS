import UIKit

var greeting = "Hello, playground"

//--------------------------------USING STRUCTURE-----------------------------

struct Bank {
    var accountBalance:Double {
        didSet{
            sendMessageUser()
        }
        willSet (newAccountValue){
            
            if newAccountValue >= 100000{
                print("DANGER--------")
            }
        }
    }
    
   mutating func addMoney(amount:Double) {
        accountBalance += amount
    ()
    }
    
    mutating func withdrawMoney(amount:Double) {
        accountBalance -= amount
        
    }
    
    func sendMessageUser() {
        
        print("The updated account Balance is \(accountBalance)")
    }
}

var bank = Bank(accountBalance: 10000)
bank.addMoney(amount: 18000)




//--------------------------------USING CLASS-----------------------------

 class Bank {
    
    var accountBalance:Double {
        
        didSet{      // Used after changed new value  in property accountBalance
            sendMessageUser()
        }
        willSet(newAccountBalance){    // before changed in value
            
            if newAccountBalance  >= 100000 {
                print("Please check realy you want to sent this amount")
            }
        }
    }

    
    init(openinBalance:Double) {
        accountBalance = openinBalance
    }
    
    func addMoney(amount:Double) {
        accountBalance += amount
   
    }
    
    func withdrawMoney(amount:Double) {
        accountBalance -= amount
        
    }
    
    func sendMessageUser() {
        
        print("The updated account Balance is \(accountBalance)")
    }
}


let amount = Bank(openinBalance: 10000.0)
amount.addMoney(amount: 555656565)

