// Created by Kai Engelhardt on 20.11.25.

import Foundation
import CoreGraphics
import Playgrounds

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

	public func supports(_ deploymentTarget: iOSDeploymentTarget) -> Bool {
		switch lastIOSVersion {
		case .latest:
			true
		case .version(let osVersion):
			deploymentTarget.version <= osVersion
		}
	}

	public static func phonesSupporting(_ deploymentTarget: iOSDeploymentTarget) -> [iPhone] {
		iPhone.ID.allCases.map { deviceID in
			iPhone(id: deviceID)
		}
		.filter {
			$0.supports(deploymentTarget)
		}
	}
}

extension iPhone {
	public enum LastIOSVersion: Equatable, ExpressibleByStringLiteral, CustomStringConvertible {
		case latest
		case version(OSVersion)

		public var description: String {
			return switch self {
			case .latest:
				"Latest iOS"
			case .version(let version):
				"iOS \(version)"
			}
		}

		public init(stringLiteral value: StringLiteralType) {
			self = .version(OSVersion(stringLiteral: value))
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

	public init(id: ID) {
		self = switch id {
		case .iPhone:
			iPhone(
				id: id,
				name: "iPhone",
				display: iOSDisplay(id: .iPhone),
				releaseIOSVersion: "1.0.0",
				lastIOSVersion: "3.1.3",
			)
		case .iPhone3G:
			iPhone(
				id: id,
				name: "iPhone 3G",
				display: iOSDisplay(id: .iPhone),
				releaseIOSVersion: "2.0.0",
				lastIOSVersion: "4.2.1",
			)
		case .iPhone3GS:
			iPhone(
				id: id,
				name: "iPhone 3GS",
				display: iOSDisplay(id: .iPhone),
				releaseIOSVersion: "3.0.0",
				lastIOSVersion: "6.1.6",
			)
		case .iPhone4:
			iPhone(
				id: id,
				name: "iPhone 4",
				display: iOSDisplay(id: .iPhone4),
				releaseIOSVersion: "4.0.0",
				lastIOSVersion: "7.1.2",
			)
		case .iPhone4s:
			iPhone(
				id: id,
				name: "iPhone 4s",
				display: iOSDisplay(id: .iPhone4),
				releaseIOSVersion: "5.0.0",
				lastIOSVersion: "9.3.6",
			)
		case .iPhone5:
			iPhone(
				id: id,
				name: "iPhone 5",
				display: iOSDisplay(id: .iPhone5),
				releaseIOSVersion: "6.0.0",
				lastIOSVersion: "10.3.4",
			)
		case .iPhone5c:
			iPhone(
				id: id,
				name: "iPhone 5c",
				display: iOSDisplay(id: .iPhone5),
				releaseIOSVersion: "7.0.0",
				lastIOSVersion: "10.3.3",
			)
		case .iPhone5s:
			iPhone(
				id: id,
				name: "iPhone 5s",
				display: iOSDisplay(id: .iPhone5),
				releaseIOSVersion: "7.0.0",
				lastIOSVersion: "12.5.7",
			)
		case .iPhone6:
			iPhone(
				id: id,
				name: "iPhone 6",
				display: iOSDisplay(id: .iPhone6),
				releaseIOSVersion: "8.0.0",
				lastIOSVersion: "12.5.7",
			)
		case .iPhone6Plus:
			iPhone(
				id: id,
				name: "iPhone 6 Plus",
				display: iOSDisplay(id: .iPhone6Plus),
				releaseIOSVersion: "8.0.0",
				lastIOSVersion: "12.5.7",
			)
		case .iPhone6s:
			iPhone(
				id: id,
				name: "iPhone 6s",
				display: iOSDisplay(id: .iPhone6),
				releaseIOSVersion: "9.0.0",
				lastIOSVersion: "15.8.5",
			)
		case .iPhone6sPlus:
			iPhone(
				id: id,
				name: "iPhone 6s Plus",
				display: iOSDisplay(id: .iPhone6Plus),
				releaseIOSVersion: "9.0.0",
				lastIOSVersion: "15.8.5",
			)
		case .iPhoneSEGen1:
			iPhone(
				id: id,
				name: "iPhone SE (1st generation)",
				display: iOSDisplay(id: .iPhone5),
				releaseIOSVersion: "9.3.0",
				lastIOSVersion: "15.8.5",
			)
		case .iPhone7:
			iPhone(
				id: id,
				name: "iPhone 7",
				display: iOSDisplay(id: .iPhone6),
				releaseIOSVersion: "10.0.1",
				lastIOSVersion: "15.8.5",
			)
		case .iPhone7Plus:
			iPhone(
				id: id,
				name: "iPhone 7 Plus",
				display: iOSDisplay(id: .iPhone6Plus),
				releaseIOSVersion: "10.0.1",
				lastIOSVersion: "15.8.5",
			)
		case .iPhone8:
			iPhone(
				id: id,
				name: "iPhone 8",
				display: iOSDisplay(id: .iPhone6),
				releaseIOSVersion: "11.0.0",
				lastIOSVersion: "16.7.12",
			)
		case .iPhone8Plus:
			iPhone(
				id: id,
				name: "iPhone 8 Plus",
				display: iOSDisplay(id: .iPhone6Plus),
				releaseIOSVersion: "11.0.0",
				lastIOSVersion: "16.7.12",
			)
		case .iPhoneX:
			iPhone(
				id: id,
				name: "iPhone X",
				display: iOSDisplay(id: .iPhoneX),
				releaseIOSVersion: "11.0.1",
				lastIOSVersion: "16.7.12",
			)
		case .iPhoneXR:
			iPhone(
				id: id,
				name: "iPhone XR",
				display: iOSDisplay(id: .iPhoneXR),
				releaseIOSVersion: "12.0.0",
				lastIOSVersion: "18.7.1",
			)
		case .iPhoneXS:
			iPhone(
				id: id,
				name: "iPhone XS",
				display: iOSDisplay(id: .iPhoneX),
				releaseIOSVersion: "12.0.0",
				lastIOSVersion: "18.7.1",
			)
		case .iPhoneXSMax:
			iPhone(
				id: id,
				name: "iPhone XS Max",
				display: iOSDisplay(id: .iPhoneXSMax),
				releaseIOSVersion: "12.0.0",
				lastIOSVersion: "18.7.1",
			)
		case .iPhone11:
			iPhone(
				id: id,
				name: "iPhone 11",
				display: iOSDisplay(id: .iPhoneXR),
				releaseIOSVersion: "13.0.0",
			)
		case .iPhone11Pro:
			iPhone(
				id: id,
				name: "iPhone 11 Pro",
				display: iOSDisplay(id: .iPhoneX),
				releaseIOSVersion: "13.0.0",
			)
		case .iPhone11ProMax:
			iPhone(
				id: id,
				name: "iPhone 11 Pro Max",
				display: iOSDisplay(id: .iPhoneXSMax),
				releaseIOSVersion: "13.0.0",
			)
		case .iPhoneSEGen2:
			iPhone(
				id: id,
				name: "iPhone SE (2nd generation)",
				display: iOSDisplay(id: .iPhone6),
				releaseIOSVersion: "13.4.0",
			)
		case .iPhone12Mini:
			iPhone(
				id: id,
				name: "iPhone 12 mini",
				display: iOSDisplay(id: .iPhone12Mini),
				releaseIOSVersion: "14.2.0",
			)
		case .iPhone12:
			iPhone(
				id: id,
				name: "iPhone 12",
				display: iOSDisplay(id: .iPhone12),
				releaseIOSVersion: "14.1.0",
			)
		case .iPhone12Pro:
			iPhone(
				id: id,
				name: "iPhone 12 Pro",
				display: iOSDisplay(id: .iPhone12),
				releaseIOSVersion: "14.1.0",
			)
		case .iPhone12ProMax:
			iPhone(
				id: id,
				name: "iPhone 12 Pro Max",
				display: iOSDisplay(id: .iPhone12ProMax),
				releaseIOSVersion: "14.2.0",
			)
		case .iPhone13Mini:
			iPhone(
				id: id,
				name: "iPhone 13 Mini",
				display: iOSDisplay(id: .iPhone12Mini),
				releaseIOSVersion: "14.2.0",
			)
		case .iPhone13:
			iPhone(
				id: id,
				name: "iPhone 13",
				display: iOSDisplay(id: .iPhone12),
				releaseIOSVersion: "15.0.0",
			)
		case .iPhone13Pro:
			iPhone(
				id: id,
				name: "iPhone 13 Pro",
				display: iOSDisplay(id: .iPhone12),
				releaseIOSVersion: "15.0.0",
			)
		case .iPhone13ProMax:
			iPhone(
				id: id,
				name: "iPhone 13 Pro Max",
				display: iOSDisplay(id: .iPhone12ProMax),
				releaseIOSVersion: "15.0.0",
			)
		case .iPhoneSEGen3:
			iPhone(
				id: id,
				name: "iPhone SE (3rd generation)",
				display: iOSDisplay(id: .iPhone6),
				releaseIOSVersion: "15.4.0",
			)
		case .iPhone14:
			iPhone(
				id: id,
				name: "iPhone 14",
				display: iOSDisplay(id: .iPhone12),
				releaseIOSVersion: "16.0.0",
			)
		case .iPhone14Plus:
			iPhone(
				id: id,
				name: "iPhone 14 Plus",
				display: iOSDisplay(id: .iPhone12ProMax),
				releaseIOSVersion: "16.0.0",
			)
		case .iPhone14Pro:
			iPhone(
				id: id,
				name: "iPhone 14 Pro",
				display: iOSDisplay(id: .iPhone14Pro),
				releaseIOSVersion: "16.0.0",
			)
		case .iPhone14ProMax:
			iPhone(
				id: id,
				name: "iPhone 14 Pro Max",
				display: iOSDisplay(id: .iPhone14ProMax),
				releaseIOSVersion: "16.0.0",
			)
		case .iPhone15:
			iPhone(
				id: id,
				name: "iPhone 15",
				display: iOSDisplay(id: .iPhone14Pro),
				releaseIOSVersion: "17.0.0",
			)
		case .iPhone15Plus:
			iPhone(
				id: id,
				name: "iPhone 15 Plus",
				display: iOSDisplay(id: .iPhone14ProMax),
				releaseIOSVersion: "17.0.0",
			)
		case .iPhone15Pro:
			iPhone(
				id: id,
				name: "iPhone 15 Pro",
				display: iOSDisplay(id: .iPhone14Pro),
				releaseIOSVersion: "17.0.0",
			)
		case .iPhone15ProMax:
			iPhone(
				id: id,
				name: "iPhone 15 Pro Max",
				display: iOSDisplay(id: .iPhone14ProMax),
				releaseIOSVersion: "17.0.0",
			)
		case .iPhone16:
			iPhone(
				id: id,
				name: "iPhone 16",
				display: iOSDisplay(id: .iPhone14Pro),
				releaseIOSVersion: "18.0.0",
			)
		case .iPhone16Plus:
			iPhone(
				id: id,
				name: "iPhone 16 Plus",
				display: iOSDisplay(id: .iPhone14ProMax),
				releaseIOSVersion: "18.0.0",
			)
		case .iPhone16Pro:
			iPhone(
				id: id,
				name: "iPhone 16 Pro",
				display: iOSDisplay(id: .iPhone16Pro),
				releaseIOSVersion: "18.0.0",
			)
		case .iPhone16ProMax:
			iPhone(
				id: id,
				name: "iPhone 16 Pro Max",
				display: iOSDisplay(id: .iPhone16ProMax),
				releaseIOSVersion: "18.0.0",
			)
		case .iPhone16e:
			iPhone(
				id: id,
				name: "iPhone 16e",
				display: iOSDisplay(id: .iPhone12),
				releaseIOSVersion: "18.3.0",
			)
		case .iPhone17:
			iPhone(
				id: id,
				name: "iPhone 17",
				display: iOSDisplay(id: .iPhone16Pro),
				releaseIOSVersion: "26.0.0",
			)
		case .iPhoneAir:
			iPhone(
				id: id,
				name: "iPhone Air",
				display: iOSDisplay(id: .iPhoneAir),
				releaseIOSVersion: "26.0.0",
			)
		case .iPhone17Pro:
			iPhone(
				id: id,
				name: "iPhone 17 Pro",
				display: iOSDisplay(id: .iPhone16Pro),
				releaseIOSVersion: "26.0.0",
			)
		case .iPhone17ProMax:
			iPhone(
				id: id,
				name: "iPhone 17 Pro Max",
				display: iOSDisplay(id: .iPhone16ProMax),
				releaseIOSVersion: "26.0.0",
			)
		}
	}
}

extension [iPhone] {
	var displays: [iOSDisplay] {
		map { $0.display }
	}

	var uniqueDisplays: [iOSDisplay] {
		displays.unique()
	}
}

struct DisplayConfiguration {
	let display: iOSDisplay
	let isZoomed: Bool
	
}

#Playground {
	let displays = iPhone.phonesSupporting(.iOS_26)
		.uniqueDisplays

	let displaysAndDevices: [(iOSDisplay.ID, [iPhone.ID])] = displays.map { display in
		(display.id, display.devices.map(\.id))
	}
}
