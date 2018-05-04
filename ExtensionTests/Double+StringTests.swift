//
//  Double+StringTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest
@testable import Extension

class Double_StringTests: XCTestCase {

    func testThreeDigitString() {
        var value: Double = 0.0

        value = 1.0
        XCTAssertEqual(value.threeDigitString, "1.0")

        value = 1
        XCTAssertEqual(value.threeDigitString, "1.0")

        value = 1000.0
        XCTAssertEqual(value.threeDigitString, "1,000.0")

        value = 123456789.0
        XCTAssertEqual(value.threeDigitString, "123,456,789.0")

        value = 1.01111
        XCTAssertEqual(value.threeDigitString, "1.01111")

        value = -1.0
        XCTAssertEqual(value.threeDigitString, "-1.0")

        value = -1000.0
        XCTAssertEqual(value.threeDigitString, "-1,000.0")

        value = -1.01111
        XCTAssertEqual(value.threeDigitString, "-1.01111")
    }

}
