//
//  CGFloat+Math.swift
//
//  Created by mn(D128) on 2018/04/09.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension CGFloat {

    var round: CGFloat {
        return CGFloat(roundf(Float(self)))
    }
    
    var abs: CGFloat {
        return CGFloat(fabsf(Float(self)))
    }

}
