//
//  UINavigationController+Transition.swift
//
//  Created by mn(D128) on 2018/02/26.
//  Copyright © 2018年 mn(D128). All rights reserved.
//

import UIKit

extension UINavigationController {

    private func pushViewController(_ viewController: UIViewController,
                                    animated: Bool,
                                    setupTransition: (CATransition) -> Void) {
        if animated {
            view.layer.removeAllAnimations()
            let transition: CATransition = CATransition()
            setupTransition(transition)
            view.layer.add(transition, forKey: kCATransition)
        }

        self.pushViewController(viewController, animated: false)
    }

    private func popViewController(animated: Bool,
                                   setupTransition: (CATransition) -> Void) -> UIViewController? {
        if animated {
            view.layer.removeAllAnimations()
            let transition: CATransition = CATransition()
            setupTransition(transition)
            view.layer.add(transition, forKey: kCATransition)
        }

        return self.popViewController(animated: false)
    }

    @discardableResult
    public func dismissViewController(animated: Bool) -> UIViewController? {
        let setupTransition: (CATransition) -> Void = { (transition: CATransition) in
            transition.duration = 0.3
            transition.type = CATransitionType.reveal
            transition.subtype = CATransitionSubtype.fromBottom
        }

        return popViewController(animated: animated,
                                 setupTransition: setupTransition)
    }

    public func fadeInViewController(_ viewController: UIViewController,
                                     animated: Bool) {
        let setupTransition: (CATransition) -> Void = { (transition: CATransition) in
            transition.duration = 0.3
            transition.type = CATransitionType.fade
        }

        pushViewController(viewController,
                           animated: animated,
                           setupTransition: setupTransition)
    }

    @discardableResult
    public func fadeOutViewController(animated: Bool) -> UIViewController? {
        let setupTransition: (CATransition) -> Void = { (transition: CATransition) in
            transition.duration = 0.3
            transition.type = CATransitionType.fade
        }

        return popViewController(animated: animated,
                                 setupTransition: setupTransition)
    }

}
