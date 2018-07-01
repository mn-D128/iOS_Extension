//
//  UICollectionView+Base.swift
//  Extension
//
//  Created by mn(D128) on 2018/07/01.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UICollectionView {
    
    @discardableResult
    public func register(nibClass: Swift.AnyClass) -> Bool {
        guard let nibName: String = type(of: self).className(nibClass) else {
            return false
        }
        
        let nib: UINib = UINib(nibName: nibName, bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: nibName)
        
        return true
    }
    
    public func dequeueReusableCell<T: UICollectionViewCell>(_ cellClass: Swift.AnyClass, for indexPath: IndexPath) -> T? {
        if let identifier: String = type(of: self).className(cellClass) {
            return self.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? T
        }

        return nil
    }

}
