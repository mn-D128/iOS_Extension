//
//  UIColor+255.swift
//
//  Created by mn(D128) on 2018/03/03.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIColor {

    public convenience init(base255Red: UInt8,
                            green: UInt8,
                            blue: UInt8,
                            alpha: UInt8 = 255) {
        self.init(red: CGFloat(base255Red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0,
                  alpha: CGFloat(alpha) / 255.0)
    }

}
