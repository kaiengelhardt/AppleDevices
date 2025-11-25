//
//  iOSDisplay.swift
//  AppleDevices
//
//  Created by Kai Engelhardt on 22.11.25.
//

import Foundation
import CoreGraphics

public struct iOSDisplay: Equatable {
	public let id: ID
	public let size: CGSize
	public let zoomedSize: CGSize?
	public let scale: Scale
	public let screenResolution: CGSize
	public let renderingResolution: CGSize
	public let cornerRadius: Double

	public var devices: [iPhone] {
		return iPhone.ID.allCases.compactMap { deviceID in
			let device = iPhone.withID(deviceID)
			return device.display.id == id ? device : nil
		}
	}

	public init(
		id: ID,
		size: CGSize,
		zoomedSize: CGSize? = nil,
		scale: Scale,
		screenResolution: CGSize,
		renderingResolution: CGSize? = nil,
		cornerRadius: Double = 0
	) {
		self.id = id
		self.size = size
		self.zoomedSize = zoomedSize
		self.scale = scale
		self.screenResolution = screenResolution
		self.renderingResolution = renderingResolution ?? screenResolution
		self.cornerRadius = cornerRadius
	}
}

extension iOSDisplay {
	public struct Scale: Equatable, RawRepresentable {
		public let rawValue: String

		public static var x1: Scale {
			Scale(rawValue: "1x")
		}

		public static var x2: Scale {
			Scale(rawValue: "2x")
		}

		public static var x3: Scale {
			Scale(rawValue: "3x")
		}

		public init(rawValue: String) {
			self.rawValue = rawValue
		}
	}
}

extension iOSDisplay {
	public enum ID: Equatable, CaseIterable {
		case iPhone
		case iPhone4
		case iPhone5
		case iPhone6
		case iPhone6Plus
		case iPhoneX
		case iPhoneXR
		case iPhoneXSMax
		case iPhone12Mini
		case iPhone12
		case iPhone12ProMax
		case iPhone14Pro
		case iPhone14ProMax
		case iPhone16Pro
		case iPhone16ProMax
		case iPhoneAir
	}

	public static func withID(_ id: ID) -> iOSDisplay {
		return switch id {
		case .iPhone:
			iOSDisplay(
				id: id,
				size: CGSize(width: 320, height: 480),
				scale: .x1,
				screenResolution: CGSize(width: 320, height: 480),
				renderingResolution: CGSize(width: 320, height: 480),
			)
		case .iPhone4:
			iOSDisplay(
				id: id,
				size: CGSize(width: 320, height: 480),
				scale: .x2,
				screenResolution: CGSize(width: 640, height: 960),
			)
		case .iPhone5:
			iOSDisplay(
				id: id,
				size: CGSize(width: 320, height: 568),
				scale: .x2,
				screenResolution: CGSize(width: 640, height: 1136),
			)
		case .iPhone6:
			iOSDisplay(
				id: id,
				size: CGSize(width: 375, height: 667),
				zoomedSize: CGSize(width: 320, height: 568),
				scale: .x2,
				screenResolution: CGSize(width: 750, height: 1334),
			)
		case .iPhone6Plus:
			iOSDisplay(
				id: id,
				size: CGSize(width: 414, height: 736),
				zoomedSize: CGSize(width: 375, height: 667),
				scale: .x3,
				screenResolution: CGSize(width: 1242, height: 2208),
				renderingResolution: CGSize(width: 1080, height: 1920),
			)
		case .iPhoneX:
			iOSDisplay(
				id: id,
				size: CGSize(width: 375, height: 812),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				screenResolution: CGSize(width: 1125, height: 2436),
				cornerRadius: 39,
			)
		case .iPhoneXR:
			iOSDisplay(
				id: id,
				size: CGSize(width: 414, height: 896),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x2,
				screenResolution: CGSize(width: 828, height: 1792),
				cornerRadius: 41.5,
			)
		case .iPhoneXSMax:
			iOSDisplay(
				id: id,
				size: CGSize(width: 414, height: 896),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				screenResolution: CGSize(width: 1242, height: 2688),
				cornerRadius: 39,
			)
		case .iPhone12Mini:
			iOSDisplay(
				id: id,
				size: CGSize(width: 375, height: 812),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				screenResolution: CGSize(width: 1080, height: 2340),
				renderingResolution: CGSize(width: 1125, height: 2436), // ????
				cornerRadius: 44,
			)
		case .iPhone12:
			iOSDisplay(
				id: id,
				size: CGSize(width: 390, height: 844),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				screenResolution: CGSize(width: 1170, height: 2532),
				cornerRadius: 47.33,
			)
		case .iPhone12ProMax:
			iOSDisplay(
				id: id,
				size: CGSize(width: 428, height: 926),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				screenResolution: CGSize(width: 1284, height: 2778),
				cornerRadius: 53.33,
			)
		case .iPhone14Pro:
			iOSDisplay(
				id: id,
				size: CGSize(width: 393, height: 852),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				screenResolution: CGSize(width: 1179, height: 2556),
				cornerRadius: 55,
			)
		case .iPhone14ProMax:
			iOSDisplay(
				id: id,
				size: CGSize(width: 430, height: 932),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				screenResolution: CGSize(width: 1290, height: 2796),
				cornerRadius: 55
			)
		case .iPhone16Pro:
			iOSDisplay(
				id: id,
				size: CGSize(width: 402, height: 874),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				screenResolution: CGSize(width: 1206, height: 2622),
				cornerRadius: 62,
			)
		case .iPhone16ProMax:
			iOSDisplay(
				id: id,
				size: CGSize(width: 440, height: 956),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				screenResolution: CGSize(width: 1320, height: 2868),
				cornerRadius: 62,
			)
		case .iPhoneAir:
			iOSDisplay(
				id: id,
				size: CGSize(width: 420, height: 912),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				screenResolution: CGSize(width: 1260, height: 2736),
				cornerRadius: 62,
			)
		}
	}
}
