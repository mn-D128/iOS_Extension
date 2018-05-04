//
//  Notification+UIKeyboardTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class Notification_UIKeyboardTests: XCTestCase {

    func testKeyboardIsLocal() {
        var notification: Notification = Notification(name: Notification.Name(""),
                                                      object: nil,
                                                      userInfo: nil)
        XCTAssertNil(notification.keyboardIsLocal)

        var isLocal: Bool = true
        notification.userInfo = [
            UIKeyboardIsLocalUserInfoKey: isLocal
        ]
        XCTAssertEqual(notification.keyboardIsLocal, isLocal)

        isLocal = false
        notification.userInfo = [
            UIKeyboardIsLocalUserInfoKey: isLocal
        ]
        XCTAssertEqual(notification.keyboardIsLocal, isLocal)

        notification.userInfo = [
            "UIKeyboardIsLocalUserInfoKeyAAAA": isLocal
        ]
        XCTAssertNil(notification.keyboardIsLocal)
    }

    func testKeyboardAnimationCurve() {
        var notification: Notification = Notification(name: Notification.Name(""),
                                                      object: nil,
                                                      userInfo: nil)
        XCTAssertNil(notification.keyboardAnimationCurve)

        let curve: UIViewAnimationOptions = UIViewAnimationOptions.curveEaseIn
        notification.userInfo = [
            UIKeyboardAnimationCurveUserInfoKey: curve.rawValue
        ]
        XCTAssertEqual(notification.keyboardAnimationCurve, curve)

        notification.userInfo = [
            "UIKeyboardAnimationCurveUserInfoKeyAAAA": curve.rawValue
        ]
        XCTAssertNil(notification.keyboardAnimationCurve)
    }

    func testKeyboardAnimationDuration() {
        var notification: Notification = Notification(name: Notification.Name(""),
                                                      object: nil,
                                                      userInfo: nil)
        XCTAssertNil(notification.keyboardAnimationDuration)

        let duration: TimeInterval = 10.0
        notification.userInfo = [
            UIKeyboardAnimationDurationUserInfoKey: NSNumber(value: duration)
        ]
        XCTAssertEqual(notification.keyboardAnimationDuration, duration)

        notification.userInfo = [
            "UIKeyboardAnimationDurationUserInfoKeyAAA": duration
        ]
        XCTAssertNil(notification.keyboardAnimationDuration)
    }

    func testKeyboardFrameBegin() {
        var notification: Notification = Notification(name: Notification.Name(""),
                                                      object: nil,
                                                      userInfo: nil)
        XCTAssertNil(notification.keyboardFrameBegin)

        let frame: CGRect = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 50.0)
        notification.userInfo = [
            UIKeyboardFrameBeginUserInfoKey: NSValue(cgRect: frame)
        ]
        XCTAssertEqual(notification.keyboardFrameBegin, frame)

        notification.userInfo = [
            "UIKeyboardFrameBeginUserInfoKeyAAAA": frame
        ]
        XCTAssertNil(notification.keyboardFrameBegin)
    }

    func testKeyboardFrameEnd() {
        var notification: Notification = Notification(name: Notification.Name(""),
                                                      object: nil,
                                                      userInfo: nil)
        XCTAssertNil(notification.keyboardFrameEnd)

        let frame: CGRect = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 50.0)
        notification.userInfo = [
            UIKeyboardFrameEndUserInfoKey: NSValue(cgRect: frame)
        ]
        XCTAssertEqual(notification.keyboardFrameEnd, frame)

        notification.userInfo = [
            "UIKeyboardFrameEndUserInfoKeyAAAA": frame
        ]
        XCTAssertNil(notification.keyboardFrameEnd)
    }

}
