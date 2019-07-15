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
        return value(forKey: "_searchField") as? UITextField
    }
    
}
