//
//  SwipeBackDisabler.swift
//  Venture Readiness Assessment
//
//  Finds the app's active UINavigationController and lets us toggle its
//  edge-swipe-to-go-back gesture on/off. Used to lock specific screens to
//  vertical-only scrolling (retail Q9, residential_services Q10).
//

import SwiftUI
import UIKit

private extension UIViewController {
    func findNavigationController() -> UINavigationController? {
        if let nav = self as? UINavigationController { return nav }
        for child in children {
            if let nav = child.findNavigationController() { return nav }
        }
        if let presented = presentedViewController {
            return presented.findNavigationController()
        }
        return nil
    }
}

enum SwipeBackController {
    static func setEnabled(_ enabled: Bool) {
        let navController = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }?
            .rootViewController?
            .findNavigationController()

        navController?.interactivePopGestureRecognizer?.isEnabled = enabled
    }
}
