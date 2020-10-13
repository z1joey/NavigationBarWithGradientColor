//
//  GradientColorNavigationController.swift
//  Sample
//
//  Created by joey on 10/13/20.
//  Copyright © 2020 tecpal. All rights reserved.
//

import UIKit

public class GradientColorNavigationController: UINavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationBar.isTransparent = true
        navigationBar.tintColor = .white
        navigationBar.textColor = .white

        let navigationBarBackgroundView = UIView()
        navigationBarBackgroundView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: navigationBar.bounds.height + UIApplication.shared.statusBarFrame.height)
        navigationBarBackgroundView.setGradientBackground()
        if view.subviews.count > 0 {
            view.insertSubview(navigationBarBackgroundView, at: 1)
        }
    }
}
