//
//  UIColor+Hex.swift
//
//  Created by mn(D128) on 2018/03/22.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIColor {

    public convenience init?(hex: String, alpha: CGFloat = 1.0) {
        let scanner: Scanner = Scanner(string: hex.replacingOccurrences(of: "#", with: ""))
        if scanner.string.utf8.count != 6 {
            return nil
        }

        var color: UInt32 = 0
        if !scanner.scanHexInt32(&color) {
            return nil
        }

        let r: CGFloat = CGFloat((color & 0xFF0000) >> 16) / 255.0
        let g: CGFloat = CGFloat((color & 0x00FF00) >> 8) / 255.0
        let b: CGFloat = CGFloat(color & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b, alpha: alpha)
    }

}
