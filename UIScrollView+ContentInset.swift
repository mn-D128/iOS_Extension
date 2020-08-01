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
    
    var verticalScrollIndicatorInsetBottom: CGFloat {
        get {        
            if #available(iOS 11.1, *) {
                return self.verticalScrollIndicatorInsets.bottom
            } else {
                return self.scrollIndicatorInsets.bottom
            }
        }
        
        set {
            if #available(iOS 11.1, *) {
                var insets: UIEdgeInsets = self.verticalScrollIndicatorInsets
                insets.bottom = newValue
                self.verticalScrollIndicatorInsets = insets
            } else {
                var insets: UIEdgeInsets = self.scrollIndicatorInsets
                insets.bottom = newValue
                self.scrollIndicatorInsets = insets
            }
        }
    }
    
}
