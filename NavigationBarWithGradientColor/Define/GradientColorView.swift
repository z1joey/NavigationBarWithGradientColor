//
//  GradientColorView.swift
//  Sample
//
//  Created by joey on 10/13/20.
//  Copyright © 2020 tecpal. All rights reserved.
//

import UIKit

public class GradientColorView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setGradientBackground(colorTop: UIColor(red: 47/255, green: 194/255, blue: 141/255, alpha: 1),
            colorBottom: UIColor(red: 57/255, green: 233/255, blue: 235/255, alpha: 1))
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setGradientBackground(colorTop: UIColor(red: 47/255, green: 194/255, blue: 141/255, alpha: 1),
            colorBottom: UIColor(red: 57/255, green: 233/255, blue: 235/255, alpha: 1))
    }
}
