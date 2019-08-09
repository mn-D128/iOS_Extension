//
//  UITextField+Base.swift
//  Stockey
//
//  Created by Masanori Nakano on 2019/07/13.
//  Copyright © 2019 D128. All rights reserved.
//

import UIKit

extension UITextField {

    // 虫眼鏡
    var lupeImageView: UIImageView? {
        return self.leftView as? UIImageView
    }
    
    // クリアボタン
    var clearButton: UIButton? {
        for subview in self.subviews where subview is UIButton {
            return subview as? UIButton
        }
        
        return nil
    }
    
}
