//
//  Double+MathTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/04/09.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class Double_MathTests: XCTestCase {

    func testCgFloat() {
        var value: Double = 10.3
        XCTAssertEqual(value.cgFloat, 10.3)

        value = 0.99998
        XCTAssertEqual(value.cgFloat, 0.99998)
    }

}
