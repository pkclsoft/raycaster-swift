//
//  Color.swift
//  RaycasterDemo
//
//  Created by Friedrich Gräter on 10.11.16.
//  Copyright © 2017 Friedrich Ruynat. All rights reserved.
//

import Foundation

/// Describes a color that can be used inside a canvas.
struct Color : Equatable {
	/// The red component of a color
	let red: UInt8
	
	/// The red component of a color
	let green: UInt8
	
	/// The red component of a color
	let blue: UInt8
	
	/// Creates a new color by darkening the color to the given percentage.
	func adjustLightIntensity(_ percentage: Double) -> Color {
		return Color(red: Color.adjustLightIntensity(forComponent: red, percentage: percentage),
		             green: Color.adjustLightIntensity(forComponent: green, percentage: percentage),
		             blue: Color.adjustLightIntensity(forComponent: blue, percentage: percentage))
	}
	
	/// Determines the value of a certain color component when darkening a color.
	static private func adjustLightIntensity(forComponent component: UInt8, percentage: Double) -> UInt8 {
		return UInt8(min(Double(component), max(0, Double(component) * percentage)))
	}
}

extension Color {
	static let black = Color(red: 0, green: 0, blue: 0)
	static let darkGrey = Color(red: 50, green: 50, blue: 50)
	static let red = Color(red: 180, green: 0, blue: 0)
	static let green = Color(red: 50, green: 128, blue: 0)
	static let blue = Color(red: 0, green: 64, blue: 128)
	static let yellow = Color(red: 255, green: 184, blue: 0)
	static let orange = Color(red: 255, green: 80, blue: 0)
}
