//
//  UIView+BaseTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest
@testable import Extension

class UIView_BaseTests: XCTestCase {

    func testInstantiate() {
        XCTAssertTrue(TestView.instantiate() is Extension.TestView)
    }

    func testBorderColor() {
        let view: UIView = UIView(frame: CGRect.zero)
        view.layer.borderColor = nil

        let color: UIColor = UIColor.red

        XCTAssertNil(view.layer.borderColor)
        XCTAssertNil(view.borderColor)

        view.borderColor = color

        XCTAssertEqual(view.layer.borderColor, color.cgColor)
        XCTAssertNotEqual(view.layer.borderColor, UIColor.blue.cgColor)

        if let view2: UIView = TestView.instantiate() {
            XCTAssertNotNil(view2.layer.borderColor)
        } else {
            XCTFail()
        }
    }

}
