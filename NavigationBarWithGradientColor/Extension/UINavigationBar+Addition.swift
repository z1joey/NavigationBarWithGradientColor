//
//  UINavigationBar+Addition.swift
//  Companion
//
//  Created by joey on 11/28/19.
//  Copyright © 2019 TGI. All rights reserved.
//

import UIKit

public extension UINavigationBar {
    private static var _isTransparent = false
    private static var _isHairlineHidden = false
    private static var _textColor: UIColor = .white

    var isTransparent: Bool {
        get {
            return UINavigationBar._isTransparent
        }
        set {
            if newValue == true {
                setBackgroundImage(UIImage(), for: .default)
                shadowImage = UIImage()
            } else {
                setBackgroundImage(nil, for: .default)
                shadowImage = nil
            }
            UINavigationBar._isTransparent = newValue
        }
    }

    var isHairlineHidden: Bool {
        get {
            return UINavigationBar._isHairlineHidden
        }
        set {
            if let hairline = findHairlineImageViewUnder(self) {
                hairline.isHidden = newValue ? true : false
            }
            UINavigationBar._isTransparent = newValue
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

    var textColor: UIColor {
        get {
            return UINavigationBar._textColor
        }
        set {
            titleTextAttributes = [NSAttributedString.Key.foregroundColor: newValue]
            UINavigationBar._textColor = newValue
        }
    }
}
