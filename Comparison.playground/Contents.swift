import Cocoa

struct Point {
	let x: Int
	let y: Int
	let label: String? = nil
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)
let abEqual = (a == b)
let abNotEqual = (a != b)

extension Point: Equatable, Comparable {

	static func < (lhs: Point, rhs: Point) -> Bool {
		return (lhs.x < rhs.x) && (lhs.y < rhs.y)
	}

	static func == (lhs: Point, rhs: Point) -> Bool {
		return (lhs.x == rhs.x) && (lhs.y == rhs.y) && (lhs.label == rhs.label)
	}
}
