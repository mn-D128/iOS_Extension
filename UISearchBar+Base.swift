//
//  UISearchBar+Base.swift
//  Stockey
//
//  Created by Masanori Nakano on 2019/07/13.
//  Copyright © 2019 D128. All rights reserved.
//

import UIKit

extension UISearchBar {
    
    var textField: UITextField? {
        if #available(iOS 13.0, *) {
            return self.searchTextField
        }
        return value(forKey: "_searchField") as? UITextField
    }
    
}
