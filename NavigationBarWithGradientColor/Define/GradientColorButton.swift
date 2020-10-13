//
//  GradientColorButton.swift
//  NavigationBarWithGradientColor
//
//  Created by joey on 10/13/20.
//  Copyright © 2020 tecpal. All rights reserved.
//

import UIKit

public class GradientColorButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        setGradientBackground()
        //setTitleColor(.white, for: .normal)
        //titleLabel?.font = UIFont.systemFont(ofSize: 20)
    }
}
