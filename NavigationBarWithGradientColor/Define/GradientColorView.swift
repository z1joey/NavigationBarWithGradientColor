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
        setGradientBackground()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setGradientBackground()
    }
}
