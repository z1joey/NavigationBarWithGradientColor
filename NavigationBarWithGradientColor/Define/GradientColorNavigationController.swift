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
        isTransparent = true
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        let navigationBarBackgroundView = UIView()
        navigationBarBackgroundView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: navigationBar.bounds.height + UIApplication.shared.statusBarFrame.height)
        navigationBarBackgroundView.setGradientBackground(colorTop: UIColor(red: 47/255, green: 194/255, blue: 141/255, alpha: 1), colorBottom: UIColor(red: 57/255, green: 233/255, blue: 235/255, alpha: 1))
        if view.subviews.count > 0 {
            view.insertSubview(navigationBarBackgroundView, at: 1)
        }
    }
}
