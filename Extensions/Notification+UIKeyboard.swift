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
        if let value: NSNumber = userInfoValue(UIResponder.keyboardIsLocalUserInfoKey) {
            return value.boolValue
        }

        return nil
    }

    public var keyboardAnimationCurve: UIView.AnimationOptions? {
        if let value: NSNumber = userInfoValue(UIResponder.keyboardAnimationCurveUserInfoKey) {
            return UIView.AnimationOptions(rawValue: value.uintValue)
        }

        return nil
    }

    public var keyboardAnimationDuration: TimeInterval? {
        if let value: NSNumber = userInfoValue(UIResponder.keyboardAnimationDurationUserInfoKey) {
            return value.doubleValue as TimeInterval
        }

        return nil
    }

    public var keyboardFrameBegin: CGRect? {
        if let value: NSValue = userInfoValue(UIResponder.keyboardFrameBeginUserInfoKey) {
            return value.cgRectValue
        }

        return nil
    }

    public var keyboardFrameEnd: CGRect? {
        if let value: NSValue = userInfoValue(UIResponder.keyboardFrameEndUserInfoKey) {
            return value.cgRectValue
        }

        return nil
    }

}
