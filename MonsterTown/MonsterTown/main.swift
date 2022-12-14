//
//  main.swift
//  MonsterTown
//
//  Created by Jean Camargo on 28/09/22.
//

import Foundation

var myTown = Town(population: 10_000, stoplights: 6)

myTown.printDescription()

let myTownSize = myTown.townSize
print(myTownSize)

myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

let fredTheZombie = Zombie(limp: false,
                           fallingApart: false,
                           town: myTown,
                           monsterName: "Fred")

fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")

fredTheZombie.victimPool = 500

print("Victim pool: \(fredTheZombie.victimPool)")

print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}
