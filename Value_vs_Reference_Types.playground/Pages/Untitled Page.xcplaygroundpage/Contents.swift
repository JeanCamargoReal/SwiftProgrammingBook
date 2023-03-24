import UIKit

var str = "Hello, playground"

var playgroundGreeting = str

playgroundGreeting += "! How are yout today?"

str


class Employee {
	var id: Int = 0
}

let anika = Employee()
let theBoss = anika

anika.id = 16
anika.id
theBoss.id

struct Company {
	var boss: Employee
}

let acme = Company(boss: anika)

let mel = Employee()

acme.boss = mel
