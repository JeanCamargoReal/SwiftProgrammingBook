import Cocoa

struct Point: {
	let x: Int
	let y: Int
	let label: String? = nil
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 5)
let abEqual = (a == b)
