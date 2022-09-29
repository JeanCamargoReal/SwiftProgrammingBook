//
//  main.swift
//  MonsterTown
//
//  Created by Jean Camargo on 28/09/22.
//

import Foundation

var myTown = Town()

myTown.changePopulation(by: 500)

let fredTheZombie = Zombie()

fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
