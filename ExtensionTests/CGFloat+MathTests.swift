//
//  CGFloat+MathTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/04/09.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class CGFloat_MathTests: XCTestCase {

    func testRound() {
        var value: CGFloat = 10.3
        XCTAssertEqual(value.round, 10.0)

        value = 10.5
        XCTAssertEqual(value.round, 11.0)

        value = 10.0
        XCTAssertEqual(value.round, 10.0)
    }

}
