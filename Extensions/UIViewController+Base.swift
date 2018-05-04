//
//  UIViewController+Base.swift
//
//  Created by mn(D128) on 2018/02/27.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UIViewController {

    public class func instantiateFromNib<T: UIViewController>() -> T? {
        guard let nibName: String = self.className else {
            return nil
        }

        return T(nibName: nibName, bundle: nil)
    }

    public class func instantiateFromStoryboard<T: UIViewController>() -> T? {
        guard let name: String = self.className else {
            return nil
        }

        let storyboard: UIStoryboard = UIStoryboard(name: name, bundle: nil)
        return storyboard.instantiateInitialViewController() as? T
    }

}
