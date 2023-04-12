import Cocoa

struct Stack {
	var items = [Int]()

	mutating func push(_ newItem: Int) {
		items.append(newItem)
	}

	mutating func pop() -> Int? {
		guard !items.isEmpty else {
			return nil
		}

		return items.removeLast()
	}
}
