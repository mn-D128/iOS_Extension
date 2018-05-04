//
//  URL+Base.swift
//
//  Created by mn(D128) on 2018/02/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import Foundation

extension URL {

    public var removeQueryURL: URL? {
        guard var comp: URLComponents = URLComponents(url: self,
                                                      resolvingAgainstBaseURL: false) else {
            return nil
        }

        comp.query = nil

        return comp.url
    }

}
