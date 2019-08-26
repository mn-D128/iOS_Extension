//
//  UIView+Frame.swift
//
//  Created by mn(D128) on 2018/10/14.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIView {

    var frameY: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.origin.y
        }
    }
    
    var frameWidth: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.size.width
        }
    }
    
    var frameHeight: CGFloat {
        set {
            var frame: CGRect = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        
        get {
            return self.frame.size.height
        }
    }

}
