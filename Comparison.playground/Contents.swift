import Cocoa

struct Point: Equatable {
	let x: Int
	let y: Int
	let label: String? = nil

	static func == (lhs: Point, rhs: Point) -> Bool {
		return (lhs.x == rhs.x) && (lhs.y == rhs.y) && (lhs.label == rhs.label)
	}
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)
let abEqual = (a == b)
