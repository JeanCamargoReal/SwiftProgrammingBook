import UIKit

func printTable(_ data: [[String]]) {
	for row in data {
		// Start the output string
		var out = "|"

		// Append each item in this row to the string
		for item in row {
			out += " \(item) |"
		}

		// Done - print int!
		print(out)
	}
}

let data = [
	["Eva", "30", "6"],
	["Saleh", "40", "18"],
	["Amit", "50", "20"]
]

printTable(data)
