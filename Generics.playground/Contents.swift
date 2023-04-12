import Cocoa

struct Stack<Element> {
	var items = [Element]()

	mutating func push(_ newItem: Element) {
		items.append(newItem)
	}

	mutating func pop() -> Element? {
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
