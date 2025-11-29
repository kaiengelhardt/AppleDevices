//
//  DeploymentTarget.swift
//  AppleDevices
//
//  Created by Kai Engelhardt on 26.11.25.
//

public struct iOSDeploymentTarget: ExpressibleByStringLiteral, Comparable {
	public let version: OSVersion

	public init(version: OSVersion) {
		self.version = version
	}

	public init(stringLiteral value: StringLiteralType) {
		version = OSVersion(stringLiteral: value)
	}

	public static func < (lhs: iOSDeploymentTarget, rhs: iOSDeploymentTarget) -> Bool {
		lhs.version < rhs.version
	}
}

extension iOSDeploymentTarget {
	public static var iOS_2: iOSDeploymentTarget { "2.0" }
	public static var iOS_2_1: iOSDeploymentTarget { "2.1" }
	public static var iOS_2_2: iOSDeploymentTarget { "2.2" }
	public static var lastIOS_2: iOSDeploymentTarget { .iOS_2_2 }

	public static var iOS_3: iOSDeploymentTarget { "3.0" }
	public static var iOS_3_1: iOSDeploymentTarget { "3.1" }
	public static var iOS_3_2: iOSDeploymentTarget { "3.2" }
	public static var lastIOS_3: iOSDeploymentTarget { .iOS_3_2 }

	public static var iOS_4: iOSDeploymentTarget { "4.0" }
	public static var iOS_4_1: iOSDeploymentTarget { "4.1" }
	public static var iOS_4_2: iOSDeploymentTarget { "4.2" }
	public static var iOS_4_3: iOSDeploymentTarget { "4.3" }
	public static var lastIOS_4: iOSDeploymentTarget { .iOS_4_3 }

	public static var iOS_5: iOSDeploymentTarget { "5.0" }
	public static var iOS_5_1: iOSDeploymentTarget { "5.1" }
	public static var lastIOS_5: iOSDeploymentTarget { .iOS_5_1 }

	public static var iOS_6: iOSDeploymentTarget { "6.0" }
	public static var iOS_6_1: iOSDeploymentTarget { "6.1" }
	public static var lastIOS_6: iOSDeploymentTarget { .iOS_6_1 }

	public static var iOS_7: iOSDeploymentTarget { "7.0" }
	public static var iOS_7_1: iOSDeploymentTarget { "7.1" }
	public static var lastIOS_7: iOSDeploymentTarget { .iOS_7_1 }

	public static var iOS_8: iOSDeploymentTarget { "8.0" }
	public static var iOS_8_1: iOSDeploymentTarget { "8.1" }
	public static var iOS_8_2: iOSDeploymentTarget { "8.2" }
	public static var iOS_8_3: iOSDeploymentTarget { "8.3" }
	public static var iOS_8_4: iOSDeploymentTarget { "8.4" }
	public static var lastIOS_8: iOSDeploymentTarget { .iOS_8_4 }

	public static var iOS_9: iOSDeploymentTarget { "9.0" }
	public static var iOS_9_1: iOSDeploymentTarget { "9.1" }
	public static var iOS_9_2: iOSDeploymentTarget { "9.2" }
	public static var iOS_9_3: iOSDeploymentTarget { "9.3" }
	public static var lastIOS_9: iOSDeploymentTarget { .iOS_9_3 }

	public static var iOS_10: iOSDeploymentTarget { "10.0" }
	public static var iOS_10_1: iOSDeploymentTarget { "10.1" }
	public static var iOS_10_2: iOSDeploymentTarget { "10.2" }
	public static var iOS_10_3: iOSDeploymentTarget { "10.3" }
	public static var lastIOS_10: iOSDeploymentTarget { .iOS_10_3 }

	public static var iOS_11: iOSDeploymentTarget { "11.0" }
	public static var iOS_11_1: iOSDeploymentTarget { "11.1" }
	public static var iOS_11_2: iOSDeploymentTarget { "11.2" }
	public static var iOS_11_3: iOSDeploymentTarget { "11.3" }
	public static var iOS_11_4: iOSDeploymentTarget { "11.4" }
	public static var lastIOS_11: iOSDeploymentTarget { .iOS_11_4 }

	public static var iOS_12: iOSDeploymentTarget { "12.0" }
	public static var iOS_12_1: iOSDeploymentTarget { "12.1" }
	public static var iOS_12_2: iOSDeploymentTarget { "12.2" }
	public static var iOS_12_3: iOSDeploymentTarget { "12.3" }
	public static var iOS_12_4: iOSDeploymentTarget { "12.4" }
	public static var lastIOS_12: iOSDeploymentTarget { .iOS_12_4 }

	public static var iOS_13: iOSDeploymentTarget { "13.0" }
	public static var iOS_13_1: iOSDeploymentTarget { "13.1" }
	public static var iOS_13_2: iOSDeploymentTarget { "13.2" }
	public static var iOS_13_3: iOSDeploymentTarget { "13.3" }
	public static var iOS_13_4: iOSDeploymentTarget { "13.4" }
	public static var iOS_13_5: iOSDeploymentTarget { "13.5" }
	public static var iOS_13_6: iOSDeploymentTarget { "13.6" }
	public static var iOS_13_7: iOSDeploymentTarget { "13.7" }
	public static var lastIOS_13: iOSDeploymentTarget { .iOS_13_7 }

	public static var iOS_14: iOSDeploymentTarget { "14.0" }
	public static var iOS_14_1: iOSDeploymentTarget { "14.1" }
	public static var iOS_14_2: iOSDeploymentTarget { "14.2" }
	public static var iOS_14_3: iOSDeploymentTarget { "14.3" }
	public static var iOS_14_4: iOSDeploymentTarget { "14.4" }
	public static var iOS_14_5: iOSDeploymentTarget { "14.5" }
	public static var iOS_14_6: iOSDeploymentTarget { "14.6" }
	public static var iOS_14_7: iOSDeploymentTarget { "14.7" }
	public static var iOS_14_8: iOSDeploymentTarget { "14.8" }
	public static var lastIOS_14: iOSDeploymentTarget { .iOS_14_8 }

	public static var iOS_15: iOSDeploymentTarget { "15.0" }
	public static var iOS_15_1: iOSDeploymentTarget { "15.1" }
	public static var iOS_15_2: iOSDeploymentTarget { "15.2" }
	public static var iOS_15_3: iOSDeploymentTarget { "15.3" }
	public static var iOS_15_4: iOSDeploymentTarget { "15.4" }
	public static var iOS_15_5: iOSDeploymentTarget { "15.5" }
	public static var iOS_15_6: iOSDeploymentTarget { "15.6" }
	public static var iOS_15_7: iOSDeploymentTarget { "15.7" }
	public static var lastIOS_15: iOSDeploymentTarget { .iOS_15_7 }

	public static var iOS_16: iOSDeploymentTarget { "16.0" }
	public static var iOS_16_1: iOSDeploymentTarget { "16.1" }
	public static var iOS_16_2: iOSDeploymentTarget { "16.2" }
	public static var iOS_16_3: iOSDeploymentTarget { "16.3" }
	public static var iOS_16_4: iOSDeploymentTarget { "16.4" }
	public static var iOS_16_5: iOSDeploymentTarget { "16.5" }
	public static var iOS_16_6: iOSDeploymentTarget { "16.6" }
	public static var lastIOS_16: iOSDeploymentTarget { .iOS_16_6 }

	public static var iOS_17: iOSDeploymentTarget { "17.0" }
	public static var iOS_17_1: iOSDeploymentTarget { "17.1" }
	public static var iOS_17_2: iOSDeploymentTarget { "17.2" }
	public static var iOS_17_3: iOSDeploymentTarget { "17.3" }
	public static var iOS_17_4: iOSDeploymentTarget { "17.4" }
	public static var iOS_17_5: iOSDeploymentTarget { "17.5" }
	public static var iOS_17_6: iOSDeploymentTarget { "17.6" }
	public static var iOS_17_7: iOSDeploymentTarget { "17.7" }
	public static var lastIOS_17: iOSDeploymentTarget { .iOS_17_7 }

	public static var iOS_18: iOSDeploymentTarget { "18.0" }
	public static var iOS_18_1: iOSDeploymentTarget { "18.1" }
	public static var iOS_18_2: iOSDeploymentTarget { "18.2" }
	public static var iOS_18_3: iOSDeploymentTarget { "18.3" }
	public static var iOS_18_4: iOSDeploymentTarget { "18.4" }
	public static var iOS_18_5: iOSDeploymentTarget { "18.5" }
	public static var iOS_18_6: iOSDeploymentTarget { "18.6" }
	public static var lastIOS_18: iOSDeploymentTarget { .iOS_18_6 }

	public static var iOS_26: iOSDeploymentTarget { "26.0" }
	public static var iOS_26_1: iOSDeploymentTarget { "26.1" }
	public static var iOS_26_2: iOSDeploymentTarget { "26.2" }
}
