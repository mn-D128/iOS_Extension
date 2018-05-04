//
//  String+LocalizedTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class String_LocalizedTests: XCTestCase {

    func testLocalized() {
        XCTAssertEqual("LOCALIZABLE_KEY".localized, "あいうえおー")
        XCTAssertEqual("AAAAA".localized, "AAAAA")
    }

}
