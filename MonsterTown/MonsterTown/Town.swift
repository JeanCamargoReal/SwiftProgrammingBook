//
//  Town.swift
//  MonsterTown
//
//  Created by Jean Camargo on 28/09/22.
//

import Foundation

struct Town {
    var population = 5_422
    var numberOfStoplights = 4

    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }

    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
