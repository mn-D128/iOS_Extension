//
//  UILabel+Localized.swift
//
//  Created by mn(D128) on 2018/02/24.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UILabel {

    @objc public func setLocalizedText(_ key: String) {
        self.text = NSLocalizedString(key, comment: "")
    }
    
    @objc public func setLocalizedAttributedText(_ key: String) {
        guard let attributedText: NSAttributedString = self.attributedText else {
            return
        }

        let attributes: [NSAttributedStringKey : Any] = attributedText.attributes(at: 0, effectiveRange: nil)
        self.attributedText = NSAttributedString(string: NSLocalizedString(key, comment: ""), attributes: attributes)
    }

}
