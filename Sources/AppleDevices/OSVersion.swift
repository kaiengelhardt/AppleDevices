//
//  OSVersion.swift
//  AppleDevices
//
//  Created by Kai Engelhardt on 26.11.25.
//

public struct OSVersion: ExpressibleByStringLiteral, Comparable {
	public let version: String

	public init(version: String) {
		self.version = version
	}

	public init(stringLiteral value: StringLiteralType) {
		version = value
	}

	public static func < (lhs: OSVersion, rhs: OSVersion) -> Bool {
		lhs.version.compare(rhs.version, options: .numeric) == .orderedAscending
	}
}
