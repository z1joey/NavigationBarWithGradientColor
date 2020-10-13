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
    func setGradientBackground(colorTop: UIColor = UIColor(red: 47/255, green: 194/255, blue: 141/255, alpha: 1), colorBottom: UIColor = UIColor(red: 57/255, green: 233/255, blue: 235/255, alpha: 1)) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorBottom.cgColor, colorTop.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = bounds

       layer.insertSublayer(gradientLayer, at: 0)
    }
}

//fileprivate let gradientColorTop    = UIColor(red: 47/255, green: 194/255, blue: 141/255, alpha: 1)
//fileprivate let gradientColorBottom = UIColor(red: 57/255, green: 233/255, blue: 235/255, alpha: 1)
