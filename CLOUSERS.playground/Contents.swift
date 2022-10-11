import UIKit

//Clousers in swift

//1.> Simple Clousers

let a = {
    print("Vivek")
}
a()

//2. Clouser with parameters

let b:(String,String) -> () = { name,city in
    
    print("Welcome",name,city)
}
b("Neotech India", "Gurgaon")

//3. Clouser with return type

let c : (String,String) -> (String) = { nam,dist in
    
    print("Welcome",nam,dist)
    return "hello"
}
let p = c("NEWAGE","Gurugram")
print(p)

//4.clouser pass as function parameter passing clouser in variable

func testClouser(test:()->()) {
    print("Function......")
    test()
}
let clouser : () -> () = {
    
    print("Clouser......")
}

testClouser(test: clouser)

//5. clouser pass as function parameter direct without passing clouser in variable

func testClouser1(test : () -> () ){
    
    print("Func!!!!!!")
    test()
}

testClouser1(test: {
    print("Clouser!!!!!!")
})


//6. Trailling Clouser

func testClose(a : String, test2:() -> () )
{
    print(a)
    test2()
}

testClose(a: "Neotech") {
    
    print("NeotechClouser")
}

// -------------------------AutoClosure Clousure----------------------

//Without Autoclosure

func withoutAutoClosure(closerName : () -> (),msg: String) {
    
    print(msg)
    closerName()
}

withoutAutoClosure(closerName: ({print("closure is here")}), msg: "Coding Gyaan")

//with @autoclosure

func withAutoCloser(closerName: @autoclosure() -> (), msg: String){
    closerName()
    print(msg)
    
}
withAutoCloser(closerName: print("Coding Gyaan......."), msg: "Loding Gyaan")
