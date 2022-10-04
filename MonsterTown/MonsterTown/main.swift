//
//  main.swift
//  MonsterTown
//
//  Created by Jean Camargo on 28/09/22.
//

import Foundation

var myTown = Town()

let myTownSize = myTown.townSize
print(myTownSize)

myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

let fredTheZombie = Zombie()

fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
