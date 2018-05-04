//
//  Int64+String.swift
//
//  Created by mn(D128) on 2018/03/01.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import Foundation

extension Int64 {

    public var threeDigitString: String? {
        let formatter: NumberFormatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3

        let number: NSNumber = NSNumber(value: self)
        return formatter.string(from: number)
    }

}
