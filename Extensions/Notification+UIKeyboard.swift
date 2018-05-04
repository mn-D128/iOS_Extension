//
//  Notification+UIKeyboard.swift
//
//  Created by mn(D128) on 2018/03/01.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import Foundation
import UIKit

extension Notification {

    public var keyboardIsLocal: Bool? {
        if let value: NSNumber = userInfoValue(UIKeyboardIsLocalUserInfoKey) {
            return value.boolValue
        }

        return nil
    }

    public var keyboardAnimationCurve: UIViewAnimationOptions? {
        if let value: NSNumber = userInfoValue(UIKeyboardAnimationCurveUserInfoKey) {
            return UIViewAnimationOptions(rawValue: value.uintValue)
        }

        return nil
    }

    public var keyboardAnimationDuration: TimeInterval? {
        if let value: NSNumber = userInfoValue(UIKeyboardAnimationDurationUserInfoKey) {
            return value.doubleValue as TimeInterval
        }

        return nil
    }

    public var keyboardFrameBegin: CGRect? {
        if let value: NSValue = userInfoValue(UIKeyboardFrameBeginUserInfoKey) {
            return value.cgRectValue
        }

        return nil
    }

    public var keyboardFrameEnd: CGRect? {
        if let value: NSValue = userInfoValue(UIKeyboardFrameEndUserInfoKey) {
            return value.cgRectValue
        }

        return nil
    }

}
