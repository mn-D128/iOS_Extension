//
//  Int64+StringTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest
@testable import Extension

class Int64_StringTests: XCTestCase {

    func testThreeDigitString() {
        var value: Int64 = 0

        value = 1
        XCTAssertEqual(value.threeDigitString, "1")

        value = 1000
        XCTAssertEqual(value.threeDigitString, "1,000")

        value = 123456789
        XCTAssertEqual(value.threeDigitString, "123,456,789")

        value = -1
        XCTAssertEqual(value.threeDigitString, "-1")

        value = -1000
        XCTAssertEqual(value.threeDigitString, "-1,000")
    }

}
