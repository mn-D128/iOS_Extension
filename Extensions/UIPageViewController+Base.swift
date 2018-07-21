//
//  UIPageViewController+Base.swift
//  Extension
//
//  Created by mn(D128) on 2018/07/22.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIPageViewController {
    
    var isPagingEnabled: Bool {
        get {
            for view: UIView in view.subviews {
                if let subView: UIScrollView = view as? UIScrollView {
                    return subView.isScrollEnabled
                }
            }
            
            return true
        }
        
        set {
            for view: UIView in view.subviews {
                if let subView: UIScrollView = view as? UIScrollView {
                    subView.isScrollEnabled = newValue
                }
            }
        }
    }
    
}
