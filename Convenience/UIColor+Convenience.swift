//
//  UIColor+Convenience.swift
//  Convenience
//
//  Created by Johan Kool on 2/12/14.
//  Copyright (c) 2014 Koolistov Pte. Ltd. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {

    /**
        Create a color from a hexadecimal string
        
        String may be prefixed with #. Alpha values are supported too.

        - parameter hex:  An hexadecimal string
    */
    public convenience init(hex: String) {
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0

        var rgba = hex
        if rgba.hasPrefix("#") {
            let index   = rgba.startIndex.advancedBy(1)
            rgba        = rgba.substringFromIndex(index)
        }

        let scanner = NSScanner(string: rgba)
        var hexValue: CUnsignedLongLong = 0
        if scanner.scanHexLongLong(&hexValue) {
            if rgba.characters.count == 6 {
                red   = CGFloat((hexValue & 0xFF0000) >> 16) / 255.0
                green = CGFloat((hexValue & 0x00FF00) >> 8)  / 255.0
                blue  = CGFloat(hexValue & 0x0000FF) / 255.0
            } else if rgba.characters.count == 8 {
                red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
            } else {
                print("invalid rgb string length")
            }
        } else {
            print("scan hex error in string \(rgba)")
        }

        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }

}
