//
//  TransparentNavigationBar.swift
//  Companion
//
//  Created by joey on 11/28/19.
//  Copyright © 2019 TGI. All rights reserved.
//

import UIKit

public extension UINavigationController {
    private static var _isTransparent = false
    private static var _isHairlineHidden = false

    var isTransparent: Bool {
        get {
            return UINavigationController._isTransparent
        }
        set {
            if newValue == true {
                navigationBar.setBackgroundImage(UIImage(), for: .default)
                navigationBar.shadowImage = UIImage()
            } else {
                navigationBar.setBackgroundImage(nil, for: .default)
                navigationBar.shadowImage = nil
            }
            UINavigationController._isTransparent = newValue
        }
    }

    var isHairlineHidden: Bool {
        get {
            return UINavigationController._isHairlineHidden
        }
        set {
            if let hairline = findHairlineImageViewUnder(navigationBar) {
                hairline.isHidden = newValue ? true : false
            }
            UINavigationController._isTransparent = newValue
        }
    }

    private func findHairlineImageViewUnder(_ view: UIView) -> UIImageView? {
        if view is UIImageView && view.bounds.size.height <= 1.0 {
            return view as? UIImageView
        }
        for subview in view.subviews {
            if let imageView = self.findHairlineImageViewUnder(subview) {
                return imageView
            }
        }
        return nil
    }
}
