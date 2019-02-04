//
//  String+Url.swift
//  TodaysKobayakawaForiOS
//
//  Created by Masanori Nakano on 2019/02/04.
//  Copyright © 2019年 D128.work. All rights reserved.
//

import Foundation

extension String {
    
    var urlEncoded: String {
        // 半角英数字 + "/?-._~" のキャラクタセットを定義
        let charset = CharacterSet.alphanumerics.union(.init(charactersIn: "/?-._~"))
        // 一度すべてのパーセントエンコードを除去(URLデコード)
        let removed = removingPercentEncoding ?? self
        // あらためてパーセントエンコードして返す
        return removed.addingPercentEncoding(withAllowedCharacters: charset) ?? removed
    }

}
