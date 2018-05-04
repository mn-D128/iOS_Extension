//
//  NSObject+BaseTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class NSObject_BaseTests: XCTestCase {

    func testClassName() {
        XCTAssertEqual(NSObject.className, "NSObject")
        XCTAssertEqual(UIView.className, "UIView")
        XCTAssertEqual(UIViewController.className, "UIViewController")
    }

    func testClassNameArgs() {
        XCTAssertEqual(NSObject.className(NSObject.self), "NSObject")
        XCTAssertEqual(NSObject.className(UIView.self), "UIView")
        XCTAssertEqual(NSObject.className(UIViewController.self), "UIViewController")

        XCTAssertEqual(UIView.className(NSObject.self), "NSObject")
        XCTAssertEqual(UIView.className(UIView.self), "UIView")
        XCTAssertEqual(UIView.className(UIViewController.self), "UIViewController")

        XCTAssertEqual(UIViewController.className(NSObject.self), "NSObject")
        XCTAssertEqual(UIViewController.className(UIView.self), "UIView")
        XCTAssertEqual(UIViewController.className(UIViewController.self), "UIViewController")
    }

}
