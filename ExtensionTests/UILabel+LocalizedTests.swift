//
//  UILabel+LocalizedTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class UILabel_LocalizedTests: XCTestCase {

    func testSetLocalizedText() {
        let label: UILabel = UILabel()
        XCTAssertNil(label.text)

        label.setLocalizedText("LOCALIZABLE_KEY")
        XCTAssertEqual(label.text, "あいうえおー")

        label.setLocalizedText("AAAAA")
        XCTAssertEqual(label.text, "AAAAA")
    }

}
