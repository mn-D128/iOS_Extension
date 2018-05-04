//
//  UIColor+255Tests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/21.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class UIColor_255Tests: XCTestCase {

    func testBase255Red() {
        var color1: UIColor = UIColor(base255Red: 255, green: 255, blue: 255, alpha: 255)
        var color2: UIColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(base255Red: 255, green: 255, blue: 255)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(base255Red: 255, green: 0, blue: 0, alpha: 0)
        color2 = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 0.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(base255Red: 0, green: 255, blue: 0, alpha: 0)
        color2 = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 0.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(base255Red: 0, green: 0, blue: 255, alpha: 0)
        color2 = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 0.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(base255Red: 0, green: 0, blue: 0, alpha: 255)
        color2 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(base255Red: 0, green: 0, blue: 0, alpha: 0)
        color2 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        XCTAssertEqual(color1, color2)

        color1 = UIColor(base255Red: 51, green: 0, blue: 0, alpha: 0)
        color2 = UIColor(red: 0.2, green: 0.0, blue: 0.0, alpha: 0.0)
        XCTAssertEqual(color1, color2)
    }

}
