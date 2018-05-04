//
//  UIColor+UIImage.swift
//
//  Created by mn(D128) on 2018/04/19.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIColor {
    
    public func image(size: CGSize) -> UIImage? {
        var result: UIImage?
        let rect: CGRect = CGRect(origin: CGPoint.zero,
                                  size: size)
        
        UIGraphicsBeginImageContext(rect.size)
        
        if let context: CGContext = UIGraphicsGetCurrentContext() {
            context.setFillColor(self.cgColor)
            context.fill(rect)
            
            result = UIGraphicsGetImageFromCurrentImageContext()
        }

        UIGraphicsEndImageContext()
        
        return result
    }
    
}
