//
//  Monster.swift
//  MonsterTown
//
//  Created by Jean Camargo on 28/09/22.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terroize yet... ")
        }
    }
}
