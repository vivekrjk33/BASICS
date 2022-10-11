import UIKit

var greeting = "Hello, playground"

for i in 1..<3 {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}
