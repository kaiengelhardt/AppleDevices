//
//  Array+Unique.swift
//  AppleDevices
//
//  Created by Kai Engelhardt on 26.11.25.
//

import Foundation

extension Array where Element: Hashable {
	/// Returns an array containing the unique elements from the current array.
	/// The ordering of elements is preserved, i.e. if an element has multiple occurrences,
	/// the first element is kept and the remaining elements are discarded.
	public func unique() -> [Element] {
		var result: [Element] = []
		var memory: Set<Element> = []

		for element in self {
			guard !memory.contains(element) else {
				continue
			}
			result.append(element)
			memory.insert(element)
		}

		return result
	}
}
