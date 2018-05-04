//
//  Notification+Base.swift
//
//  Created by mn(D128) on 2018/03/17.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import Foundation

extension Notification {

    public func userInfoValue<T>(_ key: String) -> T? {
        guard let userInfo: [AnyHashable: Any] = self.userInfo else {
            return nil
        }

        return userInfo[key] as? T
    }

}
