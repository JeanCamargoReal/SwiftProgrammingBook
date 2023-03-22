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

    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool

    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart

        super.init(town: town, monsterName: monsterName)
    }

    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")

        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }

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
