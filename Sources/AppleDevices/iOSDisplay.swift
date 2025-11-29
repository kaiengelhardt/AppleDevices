//
//  iOSDisplay.swift
//  AppleDevices
//
//  Created by Kai Engelhardt on 22.11.25.
//

import Foundation
import CoreGraphics

public struct iOSDisplay: Hashable, CustomStringConvertible {
	/// Display identifier
	public let id: ID

	/// Size in points
	public let size: CGSize

	/// Zoomed size in points
	public let zoomedSize: CGSize?

	/// Scale factor
	public let scale: Scale

	/// Scale factor accounting for deviations between physical and rendering resolution
	public var realScale: Double {
		physicalResolution.width / size.width
	}

	/// Physical resolution in pixels
	public let physicalResolution: CGSize

	/// Rendering resolution in pixels
	public let renderingResolution: CGSize

	/// Corner radius in points
	public let cornerRadius: Double

	/// Diagnoal size in inches
	public let diagonalSize: Double

	public var devices: [iPhone] {
		iPhone.ID.allCases.compactMap { deviceID in
			let device = iPhone(id: deviceID)
			return device.display.id == id ? device : nil
		}
	}

	public var description: String {
		let zoomedSizeString = if let zoomedSize {
			"\(Int(zoomedSize.width)) × \(Int(zoomedSize.height))"
		} else {
			"-"
		}

		var baseDescription =
		"""
		ID                   : \(id)
		Size                 : \(Int(size.width)) × \(Int(size.height)) @\(scale.rawValue)
		Zoomed Size          : \(zoomedSizeString)
		Physical Resolution  : \(Int(physicalResolution.width)) × \(Int(physicalResolution.height))
		"""

		let renderingResolutionDescription =
		"""
		Rendering Resolution : \(Int(renderingResolution.width)) × \(Int(renderingResolution.height))"
		"""

		if physicalResolution != renderingResolution {
			baseDescription += renderingResolutionDescription
		}

		baseDescription +=
		"""
		Corner Radius        : \(cornerRadius)
		Diagonal Size        : \(diagonalSize)\"
		"""

		return baseDescription
	}

	public var path: CGPath {
		let path = CGMutablePath()

		let rect = CGRect(origin: .zero, size: size)
		if cornerRadius > 0 {
			path.addRoundedRect(in: rect, cornerWidth: cornerRadius, cornerHeight: cornerRadius)
		} else {
			path.addRect(rect)
		}

		return path.copy()!
	}

	public init(
		id: ID,
		size: CGSize,
		zoomedSize: CGSize? = nil,
		scale: Scale,
		physicalResolution: CGSize,
		renderingResolution: CGSize? = nil,
		cornerRadius: Double = 0,
		diagonalSize: Double
	) {
		self.id = id
		self.size = size
		self.zoomedSize = zoomedSize
		self.scale = scale
		self.physicalResolution = physicalResolution
		self.renderingResolution = renderingResolution ?? physicalResolution
		self.cornerRadius = cornerRadius
		self.diagonalSize = diagonalSize
	}
}

extension iOSDisplay {
	public struct Scale: Hashable, RawRepresentable {
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
	public enum ID: Hashable, CaseIterable {
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

	public init(id: ID) {
		self = switch id {
		case .iPhone:
			iOSDisplay(
				id: id,
				size: CGSize(width: 320, height: 480),
				scale: .x1,
				physicalResolution: CGSize(width: 320, height: 480),
				diagonalSize: 3.5,
			)
		case .iPhone4:
			iOSDisplay(
				id: id,
				size: CGSize(width: 320, height: 480),
				scale: .x2,
				physicalResolution: CGSize(width: 640, height: 960),
				diagonalSize: 3.5,
			)
		case .iPhone5:
			iOSDisplay(
				id: id,
				size: CGSize(width: 320, height: 568),
				scale: .x2,
				physicalResolution: CGSize(width: 640, height: 1136),
				diagonalSize: 4.0,
			)
		case .iPhone6:
			iOSDisplay(
				id: id,
				size: CGSize(width: 375, height: 667),
				zoomedSize: CGSize(width: 320, height: 568),
				scale: .x2,
				physicalResolution: CGSize(width: 750, height: 1334),
				diagonalSize: 4.7,
			)
		case .iPhone6Plus:
			iOSDisplay(
				id: id,
				size: CGSize(width: 414, height: 736),
				zoomedSize: CGSize(width: 375, height: 667),
				scale: .x3,
				physicalResolution: CGSize(width: 1080, height: 1920),
				renderingResolution: CGSize(width: 1242, height: 2208),
				diagonalSize: 5.5,
			)
		case .iPhoneX:
			iOSDisplay(
				id: id,
				size: CGSize(width: 375, height: 812),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				physicalResolution: CGSize(width: 1125, height: 2436),
				cornerRadius: 39,
				diagonalSize: 5.8,
			)
		case .iPhoneXR:
			iOSDisplay(
				id: id,
				size: CGSize(width: 414, height: 896),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x2,
				physicalResolution: CGSize(width: 828, height: 1792),
				cornerRadius: 41.5,
				diagonalSize: 6.1,
			)
		case .iPhoneXSMax:
			iOSDisplay(
				id: id,
				size: CGSize(width: 414, height: 896),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				physicalResolution: CGSize(width: 1242, height: 2688),
				cornerRadius: 39,
				diagonalSize: 6.5,
			)
		case .iPhone12Mini:
			iOSDisplay(
				id: id,
				size: CGSize(width: 375, height: 812),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				physicalResolution: CGSize(width: 1080, height: 2340),
				renderingResolution: CGSize(width: 1125, height: 2436),
				cornerRadius: 44,
				diagonalSize: 5.4,
			)
		case .iPhone12:
			iOSDisplay(
				id: id,
				size: CGSize(width: 390, height: 844),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				physicalResolution: CGSize(width: 1170, height: 2532),
				cornerRadius: 47.33,
				diagonalSize: 6.1,
			)
		case .iPhone12ProMax:
			iOSDisplay(
				id: id,
				size: CGSize(width: 428, height: 926),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				physicalResolution: CGSize(width: 1284, height: 2778),
				cornerRadius: 53.33,
				diagonalSize: 6.7,
			)
		case .iPhone14Pro:
			iOSDisplay(
				id: id,
				size: CGSize(width: 393, height: 852),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				physicalResolution: CGSize(width: 1179, height: 2556),
				cornerRadius: 55,
				diagonalSize: 6.1,
			)
		case .iPhone14ProMax:
			iOSDisplay(
				id: id,
				size: CGSize(width: 430, height: 932),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				physicalResolution: CGSize(width: 1290, height: 2796),
				cornerRadius: 55,
				diagonalSize: 6.7,
			)
		case .iPhone16Pro:
			iOSDisplay(
				id: id,
				size: CGSize(width: 402, height: 874),
				zoomedSize: CGSize(width: 320, height: 693),
				scale: .x3,
				physicalResolution: CGSize(width: 1206, height: 2622),
				cornerRadius: 62,
				diagonalSize: 6.3,
			)
		case .iPhone16ProMax:
			iOSDisplay(
				id: id,
				size: CGSize(width: 440, height: 956),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				physicalResolution: CGSize(width: 1320, height: 2868),
				cornerRadius: 62,
				diagonalSize: 6.9,
			)
		case .iPhoneAir:
			iOSDisplay(
				id: id,
				size: CGSize(width: 420, height: 912),
				zoomedSize: CGSize(width: 375, height: 812),
				scale: .x3,
				physicalResolution: CGSize(width: 1260, height: 2736),
				cornerRadius: 62,
				diagonalSize: 6.5,
			)
		}
	}
}
