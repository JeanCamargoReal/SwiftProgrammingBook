//
//  Vault.swift
//  CyclicalAssets
//
//  Created by Jean Camargo on 03/05/23.
//

import Foundation

class Vault {
	let number: Int

	init(number: Int) {
		self.number = number
	}

	deinit {
		print("\(self) is being deallocated")
	}
}

extension Vault: CustomStringConvertible {
	var description: String {
		return "Vault(\(number))"
	}
}
