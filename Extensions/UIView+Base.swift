//
//  UIView+Base.swift
//
//  Created by mn(D128) on 2018/02/27.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIView {

    public class func instantiate<T: UIView>() -> T? {
        guard let nibName: String = self.className else {
            return nil
        }

        return instantiate(nibName: nibName) as? T
    }
    
    public class func instantiate<T: UIView>(nibName: String) -> T? {
        let nib: UINib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: nil, options: nil).first as? T
    }

    @objc public var borderColor: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }

        get {
            if let cgColor: CGColor = layer.borderColor {
                return UIColor(cgColor: cgColor)
            }

            return nil
        }
    }

}
