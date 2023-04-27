import Cocoa

enum Token: CustomStringConvertible {
	case number(Int)
	case plus

	var description: String {
		switch self {
			case .number(let n):
				return "Number: \(n)"
			case .plus:
				return "Symbol: +"
		}
	}
}

class Lexer {
	func getNumber() -> Int {
		var value = 0

		while let nextCharacter = peek() {
			switch nextCharacter {
				case "0" ... "9":
					// Another digit - add it into value
					let digitValue = Int(String(nextCharacter))!

					value = 10 * value + digitValue

					advance()

				default:
					// Something unexpected - need to send back and error
					return value
			}
		}
		return value
	}

	enum Error: Swift.Error {
		case invalidCharacter(Character)
	}

	let input: String
	var position: String.Index

	init(input: String) {
		self.input = input
		self.position = input.startIndex
	}

	func peek() -> Character? {
		guard position < input.endIndex else {
			return nil
		}
		return input[position]
	}

	func advance() {
		assert(position < input.endIndex, "Cannot advance past endIndex!")

		position = input.index(after: position)
	}

	func lex() throws -> [Token] {
		var tokens = [Token]()

		while let nextCharacter = peek() {
			switch nextCharacter {
				case "0" ... "9":
					// Start of a number - need to grab the rest
					let value = getNumber()

					tokens.append(.number(value))

				case "+":
					tokens.append(.plus)
					advance()

				case " ":
					// Just advance to ignore spaces
					advance()

				default:
					// Something unexpected - need to send back an error
					throw Lexer.Error.invalidCharacter(nextCharacter)
			}
		}
		return tokens
	}
}

func evaluate(_ input: String) {
	print("Evaluating: \(input)")

	let lexer = Lexer(input: input)

	do {
		let tokens = try lexer.lex()
		print("Lexer output: \(tokens)")
	} catch Lexer.Error.invalidCharacter(let character) {
		print("Input contained an invalid character: \(character)")
	} catch {
		print("An error ocurred: \(error)")
	}

}

evaluate("10 + 3 + 5")
evaluate("1 + 2 + three")
