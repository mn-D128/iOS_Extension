//
//  UITableView+BaseTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/18.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest
@testable import Extension

class UITableView_BaseTests: XCTestCase {

    func testRegister() {
        let tableView: UITableView = UITableView(frame: CGRect.zero,
                                                 style: UITableViewStyle.plain)

        XCTAssertNil(tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell"))
        XCTAssertTrue(tableView.register(Extension.TestTableViewCell.self))
        XCTAssertTrue(tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell") is Extension.TestTableViewCell)
    }

    func testRegisterNibClass() {
        let tableView: UITableView = UITableView(frame: CGRect.zero,
                                                 style: UITableViewStyle.plain)

        XCTAssertNil(tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell"))
        XCTAssertTrue(tableView.register(nibClass: Extension.TestTableViewCell.self))
        XCTAssertTrue(tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell") is Extension.TestTableViewCell)
    }

    func testDequeueReusableCell() {
        let tableView: UITableView = UITableView(frame: CGRect.zero,
                                                 style: UITableViewStyle.plain)

        XCTAssertNil(tableView.dequeueReusableCell(Extension.TestTableViewCell.self))

        tableView.register(Extension.TestTableViewCell.self, forCellReuseIdentifier: "TestTableViewCell")

        XCTAssertTrue(tableView.dequeueReusableCell(Extension.TestTableViewCell.self) is Extension.TestTableViewCell)
    }

}
