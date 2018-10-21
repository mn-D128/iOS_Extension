//
//  String+Base.swift
//  Stockey
//
//  Created by Masanori Nakano on 2018/10/21.
//  Copyright © 2018年 D128. All rights reserved.
//

import Foundation

extension String {
    
    var length: Int {
        var len: Int = 0
        self.enumerateSubstrings(in: startIndex ..< endIndex,
                                 options: .byComposedCharacterSequences) { s, _, _, _ in
            if s != nil {
                len += 1
            }
        }
        
        return len
    }
    
}
