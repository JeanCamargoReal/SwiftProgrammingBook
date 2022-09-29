//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jean Camargo on 29/09/22.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true

    func regenerate() {
        walksWithLimp = false
    }

    override func terrorizeTown() {
        town?.changePopulation(by: -10)

        super.terrorizeTown()

        regenerate()
    }
}
