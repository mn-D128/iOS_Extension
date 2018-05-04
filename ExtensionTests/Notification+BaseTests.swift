//
//  Notification+BaseTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest
@testable import Extension

class Notification_BaseTests: XCTestCase {

    func testUserInfoValue() {
        var notification: Notification = Notification(name: Notification.Name(""),
                                                      object: nil,
                                                      userInfo: nil)
        XCTAssertNil(notification.userInfoValue("key"))

        let number: NSNumber = NSNumber(value: 1)
        notification.userInfo = [
            "key": number
        ]
        XCTAssertEqual(notification.userInfoValue("key"), number)
        XCTAssertNotEqual(notification.userInfoValue("key"), Int(2))

        let int: Int = 999
        notification.userInfo = [
            "key": int
        ]
        XCTAssertEqual(notification.userInfoValue("key"), int)
    }

}
