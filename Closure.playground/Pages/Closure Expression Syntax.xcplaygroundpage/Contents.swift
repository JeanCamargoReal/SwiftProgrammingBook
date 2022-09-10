//: [Previous](@previous)

// {(parameter) -> return type in
//      Code
// }

import Foundation

let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

let volunteersSorted = volunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in
    
    return i < j
})

print(volunteersSorted)

//: [Next](@next)
