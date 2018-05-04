//
//  UIViewController+BaseTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest
@testable import Extension

class UIViewController_BaseTests: XCTestCase {

    func testInstantiateFromNib() {
        guard let vc: Extension.TestViewController = Extension.TestViewController.instantiateFromNib() else {
            XCTFail()
            return
        }

        XCTAssertNotNil(vc)
    }

    func testInstantiateFromStoryboard() {
        guard let vc: Extension.TestViewController = Extension.TestViewController.instantiateFromStoryboard() else {
            XCTFail()
            return
        }

        XCTAssertNotNil(vc)
    }

}
