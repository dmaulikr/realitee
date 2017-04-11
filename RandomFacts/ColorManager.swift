//
//  ColorManager.swift
//  RandomFacts
//
//  Created by Sebastian Crossa on 1/8/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

struct ColorManager {
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0) -> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
}
