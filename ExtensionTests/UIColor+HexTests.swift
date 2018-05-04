//
//  UIColor+HexTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/22.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class UIColor_HexTests: XCTestCase {

    func testHex() {
        var color1: UIColor? = UIColor(hex: "FFFFFF", alpha: 1.0)
        var color2: UIColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(hex: "FFFF", alpha: 1.0)
        XCTAssertNil(color1)

        color1 = UIColor(hex: "#FFFFFF", alpha: 1.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(hex: "#FFFFFF", alpha: 0.5)
        color2 = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(hex: "#33FFFF", alpha: 1.0)
        color2 = UIColor(red: 0.2, green: 1.0, blue: 1.0, alpha: 1.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(hex: "#FF33FF", alpha: 1.0)
        color2 = UIColor(red: 1.0, green: 0.2, blue: 1.0, alpha: 1.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(hex: "#FFFF33", alpha: 1.0)
        color2 = UIColor(red: 1.0, green: 1.0, blue: 0.2, alpha: 1.0)
        XCTAssertEqual(color1, color2)
    }

}
