//
//  NSObject+Base.swift
//
//  Created by mn(D128) on 2018/03/17.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import Foundation

extension NSObject {

    public class var className: String? {
        return className(self)
    }

    public class func className(_ aClass: Swift.AnyClass) -> String? {
        let strClass: NSString = NSStringFromClass(aClass) as NSString
        return strClass.components(separatedBy: ".").last
    }

}
