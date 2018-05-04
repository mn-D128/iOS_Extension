//
//  UITableView+Base.swift
//
//  Created by mn(D128) on 2018/02/27.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UITableView {

    @discardableResult
    public func register(_ cellClass: Swift.AnyClass) -> Bool {
        guard let identifier: String = type(of: self).className(cellClass) else {
            return false
        }

        self.register(cellClass, forCellReuseIdentifier: identifier)

        return true
    }

    @discardableResult
    public func register(nibClass: Swift.AnyClass) -> Bool {
        guard let nibName: String = type(of: self).className(nibClass) else {
            return false
        }

        let nib: UINib = UINib(nibName: nibName, bundle: nil)
        self.register(nib, forCellReuseIdentifier: nibName)

        return true
    }

    public func dequeueReusableCell<T: UITableViewCell>(_ cellClass: Swift.AnyClass) -> T? {
        if let identifier: String = type(of: self).className(cellClass) {
            return self.dequeueReusableCell(withIdentifier: identifier) as? T
        }

        return nil
    }
    
    public func setTableEmptyFooterView() {
        let footerView: UIView = UIView(frame: CGRect(x: 0.0,
                                                      y: 0.0,
                                                      width: self.frame.width,
                                                      height: 0.0))
        footerView.autoresizingMask = [UIViewAutoresizing.flexibleWidth]
        footerView.backgroundColor = UIColor.clear
        
        self.tableFooterView = footerView
    }

}
