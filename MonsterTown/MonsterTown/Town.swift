//
//  Town.swift
//  MonsterTown
//
//  Created by Jean Camargo on 28/09/22.
//

import Foundation

struct Town {
    static let world = "Earth"

    var population = 5_422 {
        didSet(oldPopulation) {
            print("The popularion has changed to \(population) from \(oldPopulation).")
        }
    }
    var numberOfStoplights = 4
    
    enum Size {
        case small
        case medium
        case large
    }

    var townSize: Size {
        switch population {
        case 0...10_000:
            return Size.small

        case 10_001...100_000:
            return Size.medium

        default: return Size.large
        }
    }

    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }

    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
