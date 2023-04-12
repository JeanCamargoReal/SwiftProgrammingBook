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

var intStack = Stack()

intStack.push(1)
intStack.push(2)

print(String(describing: intStack.pop()))
print(String(describing: intStack.pop()))
print(String(describing: intStack.pop()))
