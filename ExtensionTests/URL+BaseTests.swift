//
//  URL+BaseTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/21.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest

class URL_BaseTests: XCTestCase {

    func testRemoveQueryURL() {
        if let url: URL = URL(string: "https://www.google.co.jp/search?q=google&oq=google&aqs=chrome..69i57j69i60l3j69i65j69i59.2192j0j7&sourceid=chrome&ie=UTF-8"),
            let removeUrl: URL = url.removeQueryURL {
            XCTAssertEqual(removeUrl, URL(string: "https://www.google.co.jp/search"))
        } else {
            XCTFail()
        }

        if let url: URL = URL(string: "https://www.google.co.jp/"),
            let removeUrl: URL = url.removeQueryURL {
            XCTAssertEqual(removeUrl, URL(string: "https://www.google.co.jp/"))
        } else {
            XCTFail()
        }
    }

}
