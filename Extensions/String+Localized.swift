//
//  String+Localized.swift
//
//  Created by mn(D128) on 2018/02/15.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import Foundation

extension String {

    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }

}
