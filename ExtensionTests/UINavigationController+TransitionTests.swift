//
//  UINavigationController+TransitionTests.swift
//  ExtensionTests
//
//  Created by mn(D128) on 2018/03/21.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import XCTest
@testable import Extension

class UINavigationController_TransitionTests: XCTestCase {

    func testDismissViewController() {
        let vc1: UIViewController = UIViewController()
        let nc: UINavigationController = UINavigationController(rootViewController: vc1)

        let vc2: UIViewController = UIViewController()
        nc.pushViewController(vc2, animated: false)

        XCTAssertEqual(nc.dismissViewController(animated: true), vc2)
    }

    func testFadeOutViewController() {
        let vc1: UIViewController = UIViewController()
        let nc: UINavigationController = UINavigationController(rootViewController: vc1)

        let vc2: UIViewController = UIViewController()
        nc.pushViewController(vc2, animated: false)

        XCTAssertEqual(nc.fadeOutViewController(animated: true), vc2)
    }

}
