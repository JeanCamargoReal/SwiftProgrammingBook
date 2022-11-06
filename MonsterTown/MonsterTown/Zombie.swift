//
//  Zombie.swift
//  MonsterTown
//
//  Created by Jean Camargo on 29/09/22.
//

import Foundation

class Zombie: Monster {
    class func makeSpookyNoise() -> String {
        return "Brains ..."
    }

    override class var spookyNoise: String {
        return "Brains..."
    }

    var walksWithLimp = true
    private var isFallingApart = false

    func regenerate() {
        walksWithLimp = false
    }

    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()

        regenerate()
    }
}
