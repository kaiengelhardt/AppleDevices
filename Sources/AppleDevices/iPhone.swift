// Created by Kai Engelhardt on 20.11.25.

import Foundation
import CoreGraphics

public struct iPhone: Equatable {
	public let id: ID
	public let name: String
	public let display: iOSDisplay
	public let releaseIOSVersion: String
	public let lastIOSVersion: LastIOSVersion

	public init(
		id: ID,
		name: String,
		display: iOSDisplay,
		releaseIOSVersion: String,
		lastIOSVersion: LastIOSVersion = .latest
	) {
		self.id = id
		self.name = name
		self.display = display
		self.releaseIOSVersion = releaseIOSVersion
		self.lastIOSVersion = lastIOSVersion
	}
}

extension iPhone {
	public enum LastIOSVersion: Equatable, ExpressibleByStringLiteral, CustomStringConvertible {
		case latest
		case version(String)

		public var description: String {
			return switch self {
			case .latest:
				"Latest iOS"
			case .version(let version):
				"iOS \(version)"
			}
		}

		public init(stringLiteral value: StringLiteralType) {
			self = .version(value)
		}
	}
}

extension iPhone {
	public enum ID: Equatable, CaseIterable {
		case iPhone
		case iPhone3G
		case iPhone3GS
		case iPhone4
		case iPhone4s
		case iPhone5
		case iPhone5c
		case iPhone5s
		case iPhone6
		case iPhone6Plus
		case iPhone6s
		case iPhone6sPlus
		case iPhoneSEGen1
		case iPhone7
		case iPhone7Plus
		case iPhone8
		case iPhone8Plus
		case iPhoneX
		case iPhoneXR
		case iPhoneXS
		case iPhoneXSMax
		case iPhone11
		case iPhone11Pro
		case iPhone11ProMax
		case iPhoneSEGen2
		case iPhone12Mini
		case iPhone12
		case iPhone12Pro
		case iPhone12ProMax
		case iPhone13Mini
		case iPhone13
		case iPhone13Pro
		case iPhone13ProMax
		case iPhoneSEGen3
		case iPhone14
		case iPhone14Plus
		case iPhone14Pro
		case iPhone14ProMax
		case iPhone15
		case iPhone15Plus
		case iPhone15Pro
		case iPhone15ProMax
		case iPhone16
		case iPhone16Plus
		case iPhone16Pro
		case iPhone16ProMax
		case iPhone16e
		case iPhone17
		case iPhoneAir
		case iPhone17Pro
		case iPhone17ProMax
	}

	public static func withID(_ id: ID) -> iPhone {
		return switch id {
		case .iPhone:
			iPhone(
				id: id,
				name: "iPhone",
				display: .withID(.iPhone),
				releaseIOSVersion: "1.0.0",
				lastIOSVersion: "3.1.3",
			)
		case .iPhone3G:
			iPhone(
				id: id,
				name: "iPhone 3G",
				display: .withID(.iPhone),
				releaseIOSVersion: "2.0.0",
				lastIOSVersion: "4.2.1",
			)
		case .iPhone3GS:
			iPhone(
				id: id,
				name: "iPhone 3GS",
				display: .withID(.iPhone),
				releaseIOSVersion: "3.0.0",
				lastIOSVersion: "6.1.6",
			)
		case .iPhone4:
			iPhone(
				id: id,
				name: "iPhone 4",
				display: .withID(.iPhone4),
				releaseIOSVersion: "4.0.0",
				lastIOSVersion: "7.1.2",
			)
		case .iPhone4s:
			iPhone(
				id: id,
				name: "iPhone 4s",
				display: .withID(.iPhone4),
				releaseIOSVersion: "5.0.0",
				lastIOSVersion: "9.3.6",
			)
		case .iPhone5:
			iPhone(
				id: id,
				name: "iPhone 5",
				display: .withID(.iPhone5),
				releaseIOSVersion: "6.0.0",
				lastIOSVersion: "10.3.4",
			)
		case .iPhone5c:
			iPhone(
				id: id,
				name: "iPhone 5c",
				display: .withID(.iPhone5),
				releaseIOSVersion: "7.0.0",
				lastIOSVersion: "10.3.3",
			)
		case .iPhone5s:
			iPhone(
				id: id,
				name: "iPhone 5s",
				display: .withID(.iPhone5),
				releaseIOSVersion: "7.0.0",
				lastIOSVersion: "12.5.7",
			)
		case .iPhone6:
			iPhone(
				id: id,
				name: "iPhone 6",
				display: .withID(.iPhone6),
				releaseIOSVersion: "8.0.0",
				lastIOSVersion: "12.5.7",
			)
		case .iPhone6Plus:
			iPhone(
				id: id,
				name: "iPhone 6 Plus",
				display: .withID(.iPhone6Plus),
				releaseIOSVersion: "8.0.0",
				lastIOSVersion: "12.5.7",
			)
		case .iPhone6s:
			iPhone(
				id: id,
				name: "iPhone 6s",
				display: .withID(.iPhone6),
				releaseIOSVersion: "9.0.0",
				lastIOSVersion: "15.8.5",
			)
		case .iPhone6sPlus:
			iPhone(
				id: id,
				name: "iPhone 6s Plus",
				display: .withID(.iPhone6Plus),
				releaseIOSVersion: "9.0.0",
				lastIOSVersion: "15.8.5",
			)
		case .iPhoneSEGen1:
			iPhone(
				id: id,
				name: "iPhone SE (1st generation)",
				display: .withID(.iPhone5),
				releaseIOSVersion: "9.3.0",
				lastIOSVersion: "15.8.5",
			)
		case .iPhone7:
			iPhone(
				id: id,
				name: "iPhone 7",
				display: .withID(.iPhone6),
				releaseIOSVersion: "10.0.1",
				lastIOSVersion: "15.8.5",
			)
		case .iPhone7Plus:
			iPhone(
				id: id,
				name: "iPhone 7 Plus",
				display: .withID(.iPhone6Plus),
				releaseIOSVersion: "10.0.1",
				lastIOSVersion: "15.8.5",
			)
		case .iPhone8:
			iPhone(
				id: id,
				name: "iPhone 8",
				display: .withID(.iPhone6),
				releaseIOSVersion: "11.0.0",
				lastIOSVersion: "16.7.12",
			)
		case .iPhone8Plus:
			iPhone(
				id: id,
				name: "iPhone 8 Plus",
				display: .withID(.iPhone6Plus),
				releaseIOSVersion: "11.0.0",
				lastIOSVersion: "16.7.12",
			)
		case .iPhoneX:
			iPhone(
				id: id,
				name: "iPhone X",
				display: .withID(.iPhoneX),
				releaseIOSVersion: "11.0.1",
				lastIOSVersion: "16.7.12",
			)
		case .iPhoneXR:
			iPhone(
				id: id,
				name: "iPhone XR",
				display: .withID(.iPhoneXR),
				releaseIOSVersion: "12.0.0",
				lastIOSVersion: "18.7.1",
			)
		case .iPhoneXS:
			iPhone(
				id: id,
				name: "iPhone XS",
				display: .withID(.iPhoneX),
				releaseIOSVersion: "12.0.0",
				lastIOSVersion: "18.7.1",
			)
		case .iPhoneXSMax:
			iPhone(
				id: id,
				name: "iPhone XS Max",
				display: .withID(.iPhoneXSMax),
				releaseIOSVersion: "12.0.0",
				lastIOSVersion: "18.7.1",
			)
		case .iPhone11:
			iPhone(
				id: id,
				name: "iPhone 11",
				display: .withID(.iPhoneXR),
				releaseIOSVersion: "13.0.0",
			)
		case .iPhone11Pro:
			iPhone(
				id: id,
				name: "iPhone 11 Pro",
				display: .withID(.iPhoneX),
				releaseIOSVersion: "13.0.0",
			)
		case .iPhone11ProMax:
			iPhone(
				id: id,
				name: "iPhone 11 Pro Max",
				display: .withID(.iPhoneXSMax),
				releaseIOSVersion: "13.0.0",
			)
		case .iPhoneSEGen2:
			iPhone(
				id: id,
				name: "iPhone SE (2nd generation)",
				display: .withID(.iPhone6),
				releaseIOSVersion: "13.4.0",
			)
		case .iPhone12Mini:
			iPhone(
				id: id,
				name: "iPhone 12 mini",
				display: .withID(.iPhone12Mini),
				releaseIOSVersion: "14.2.0",
			)
		case .iPhone12:
			iPhone(
				id: id,
				name: "iPhone 12",
				display: .withID(.iPhone12),
				releaseIOSVersion: "14.1.0",
			)
		case .iPhone12Pro:
			iPhone(
				id: id,
				name: "iPhone 12 Pro",
				display: .withID(.iPhone12),
				releaseIOSVersion: "14.1.0",
			)
		case .iPhone12ProMax:
			iPhone(
				id: id,
				name: "iPhone 12 Pro Max",
				display: .withID(.iPhone12ProMax),
				releaseIOSVersion: "14.2.0",
			)
		case .iPhone13Mini:
			iPhone(
				id: id,
				name: "iPhone 13 Mini",
				display: .withID(.iPhone12Mini),
				releaseIOSVersion: "14.2.0",
			)
		case .iPhone13:
			iPhone(
				id: id,
				name: "iPhone 13",
				display: .withID(.iPhone12),
				releaseIOSVersion: "15.0.0",
			)
		case .iPhone13Pro:
			iPhone(
				id: id,
				name: "iPhone 13 Pro",
				display: .withID(.iPhone12),
				releaseIOSVersion: "15.0.0",
			)
		case .iPhone13ProMax:
			iPhone(
				id: id,
				name: "iPhone 13 Pro Max",
				display: .withID(.iPhone12ProMax),
				releaseIOSVersion: "15.0.0",
			)
		case .iPhoneSEGen3:
			iPhone(
				id: id,
				name: "iPhone SE (3rd generation)",
				display: .withID(.iPhone6),
				releaseIOSVersion: "15.4.0",
			)
		case .iPhone14:
			iPhone(
				id: id,
				name: "iPhone 14",
				display: .withID(.iPhone12),
				releaseIOSVersion: "16.0.0",
			)
		case .iPhone14Plus:
			iPhone(
				id: id,
				name: "iPhone 14 Plus",
				display: .withID(.iPhone12ProMax),
				releaseIOSVersion: "16.0.0",
			)
		case .iPhone14Pro:
			iPhone(
				id: id,
				name: "iPhone 14 Pro",
				display: .withID(.iPhone14Pro),
				releaseIOSVersion: "16.0.0",
			)
		case .iPhone14ProMax:
			iPhone(
				id: id,
				name: "iPhone 14 Pro Max",
				display: .withID(.iPhone14ProMax),
				releaseIOSVersion: "16.0.0",
			)
		case .iPhone15:
			iPhone(
				id: id,
				name: "iPhone 15",
				display: .withID(.iPhone14Pro),
				releaseIOSVersion: "17.0.0",
			)
		case .iPhone15Plus:
			iPhone(
				id: id,
				name: "iPhone 15 Plus",
				display: .withID(.iPhone14ProMax),
				releaseIOSVersion: "17.0.0",
			)
		case .iPhone15Pro:
			iPhone(
				id: id,
				name: "iPhone 15 Pro",
				display: .withID(.iPhone14Pro),
				releaseIOSVersion: "17.0.0",
			)
		case .iPhone15ProMax:
			iPhone(
				id: id,
				name: "iPhone 15 Pro Max",
				display: .withID(.iPhone14ProMax),
				releaseIOSVersion: "17.0.0",
			)
		case .iPhone16:
			iPhone(
				id: id,
				name: "iPhone 16",
				display: .withID(.iPhone14Pro),
				releaseIOSVersion: "18.0.0",
			)
		case .iPhone16Plus:
			iPhone(
				id: id,
				name: "iPhone 16 Plus",
				display: .withID(.iPhone14ProMax),
				releaseIOSVersion: "18.0.0",
			)
		case .iPhone16Pro:
			iPhone(
				id: id,
				name: "iPhone 16 Pro",
				display: .withID(.iPhone14Pro),
				releaseIOSVersion: "18.0.0",
			)
		case .iPhone16ProMax:
			iPhone(
				id: id,
				name: "iPhone 16 Pro Max",
				display: .withID(.iPhone14ProMax),
				releaseIOSVersion: "18.0.0",
			)
		case .iPhone16e:
			iPhone(
				id: id,
				name: "iPhone 16e",
				display: .withID(.iPhone12),
				releaseIOSVersion: "18.3.0",
			)
		case .iPhone17:
			iPhone(
				id: id,
				name: "iPhone 17",
				display: .withID(.iPhone16Pro),
				releaseIOSVersion: "26.0.0",
			)
		case .iPhoneAir:
			iPhone(
				id: id,
				name: "iPhone Air",
				display: .withID(.iPhoneAir),
				releaseIOSVersion: "26.0.0",
			)
		case .iPhone17Pro:
			iPhone(
				id: id,
				name: "iPhone 17 Pro",
				display: .withID(.iPhone16Pro),
				releaseIOSVersion: "26.0.0",
			)
		case .iPhone17ProMax:
			iPhone(
				id: id,
				name: "iPhone 17 Pro Max",
				display: .withID(.iPhone16ProMax),
				releaseIOSVersion: "26.0.0",
			)
		}
	}
}
