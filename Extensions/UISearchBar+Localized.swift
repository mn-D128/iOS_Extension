//
//  UISearchBar+Localized.swift
//  Stockey
//
//  Created by Masanori Nakano on 2019/07/07.
//  Copyright © 2019 D128. All rights reserved.
//

import UIKit

extension UISearchBar {
    
    @objc public func setLocalizedPlaceholder(_ key: String) {
        self.placeholder = NSLocalizedString(key, comment: "")
    }
    
}
