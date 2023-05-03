//
//  Vault.swift
//  CyclicalAssets
//
//  Created by Jean Camargo on 03/05/23.
//

import Foundation

class Vault {
	let number: Int

	private(set) var assets = [Asset]()
	var totalValue: Double = 0
	#warning("Implement totalValue as a computed property")

	init(number: Int) {
		self.number = number
	}

	deinit {
		print("\(self) is being deallocated")
	}

	func store(_ asset: Asset) {
		asset.container = self
		assets.append(asset)
	}
}

extension Vault: CustomStringConvertible {
	var description: String {
		return "Vault(\(number))"
	}
}
