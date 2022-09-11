//: [Previous](@previous)

import Foundation

func format(numbers: [Double], using formatter: (Double) -> String = {"\($0)"}) -> [String] {
    var result = [String]()
    
    for number in numbers {
        let transformed = formatter(number)
        
        result.append(transformed)
    }
    return result
}


var numberOfTransformations = 0

let rounder: (Double) -> String = { (num: Double) -> String in
    numberOfTransformations += 1
    
    return "\(Int(num.rounded()))"
}

let volunteerAvareges = [10.75, 4.2, 1.5, 12.12, 16.815]
let roundedAveregesAsString = format(numbers: volunteerAvareges, using: rounder)
let exactAveragesStrings = format(numbers: volunteerAvareges)

print(numberOfTransformations)

let roundedAverages = volunteerAvareges.map { (avg: Double) -> Int in
    return Int(avg.rounded())
}

let passingAverages = roundedAverages.filter { (avg: Int) -> Bool in
    return avg >= 10
}

let estimatedParticipation = passingAverages.reduce(5) { (estimataionSoFar: Int, currentOrgAverage: Int) -> Int in
    
    return estimataionSoFar + currentOrgAverage
}
//: [Next](@next)
