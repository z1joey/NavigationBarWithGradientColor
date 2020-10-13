//
//  UIView+Addition.swift
//  TopPanel
//
//  Created by joey on 10/12/20.
//  Copyright © 2020 tecpal. All rights reserved.
//

import UIKit

public extension UIView {
    /// calling setGradientBackground() on viewDidAppear
    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorBottom.cgColor, colorTop.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = bounds

       layer.insertSublayer(gradientLayer, at: 0)
    }
}
