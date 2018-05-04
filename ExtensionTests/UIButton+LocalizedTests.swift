//
//  UIButton+LocalizedTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class UIButton_LocalizedTests: XCTestCase {

    func testSetLocalizedTitle() {
        let btn: UIButton = UIButton()
        XCTAssertNil(btn.title(for: UIControlState.normal))

        btn.setLocalizedTitle("LOCALIZABLE_KEY")
        XCTAssertEqual(btn.title(for: UIControlState.normal), "あいうえおー")

        btn.setLocalizedTitle("AAAAA")
        XCTAssertEqual(btn.title(for: UIControlState.normal), "AAAAA")
    }

}
