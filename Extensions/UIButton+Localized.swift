//
//  UIButton+Localized.swift
//
//  Created by mn(D128) on 2018/03/01.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIButton {

    @objc public func setLocalizedTitle(_ key: String) {
        let title: String = NSLocalizedString(key, comment: "")
        self.setTitle(title, for: UIControlState.normal)
    }

}
