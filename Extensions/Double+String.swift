//
//  Double+String.swift
//
//  Created by mn(D128) on 2018/02/24.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import Foundation

extension Double {

    public var threeDigitString: String? {
        let str: NSString = self.description as NSString
        let range: NSRange = str.range(of: ".")
        let maximumFractionDigits: Int = str.length - (range.location + range.length)

        let formatter: NumberFormatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = maximumFractionDigits

        let number: NSNumber = NSNumber(value: self)
        let result: String? = formatter.string(from: number)

        return result
    }

}
