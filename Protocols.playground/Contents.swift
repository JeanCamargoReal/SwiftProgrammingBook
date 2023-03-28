import UIKit

func printTable(_ data: [[String]], withColumnLabels columnLabels: [String]) {
	// Create header row containing column headers
	var headerRow = "|"

	for columnLabel in columnLabels {
		let columnHeader = " \(columnLabel) |"
		headerRow += columnHeader
	}

	print(headerRow)

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

printTable(data, withColumnLabels: ["Employee Name", "Age", "Years of Experience"])
