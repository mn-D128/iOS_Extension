//
//  UIScrollView+ContentInset.swift
//  Stockey
//
//  Created by mn(D128) on 2018/10/21.
//  Copyright © 2018年 D128. All rights reserved.
//

import UIKit

extension UIScrollView {
    
    var contentInsetBottom: CGFloat {
        get {
            return self.contentInset.bottom
        }
        
        set {
            var contentInset: UIEdgeInsets = self.contentInset
            contentInset.bottom = newValue
            self.contentInset = contentInset
        }
    }
    
}
