//
//  Asset.swift
//  CyclicalAssets
//
//  Created by Jean Camargo on 03/05/23.
//

import Foundation

class Asset {
	let name: String
	let value: Double
	weak var container: Vault?

	init(name: String, value: Double) {
		self.name = name
		self.value = value
	}

	deinit {
		print("\(self) is being deallocated")
	}
}

extension Asset: CustomStringConvertible {
	var description: String {
		if let container = container {
			return "Asset(\(name)), worth \(value), in \(container))"
		} else {
			return "Asset(\(name), worth \(value), not stored anywhere)"
		}
	}
}
