//
//  UIButton+UIColor.swift
//
//  Created by mn(D128) on 2018/04/19.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIButton {
    
    public func setBackgroundColor(_ color: UIColor?, for state: UIControl.State) {
        let image: UIImage? = color?.image(size: CGSize(width: 1.0, height: 1.0))
        self.setBackgroundImage(image, for: state)
    }
    
}
