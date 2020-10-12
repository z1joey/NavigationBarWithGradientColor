//
//  ViewController.swift
//  Sample
//
//  Created by joey on 10/12/20.
//  Copyright © 2020 tecpal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.isTransparent = true
        if let navigationBar = navigationController?.navigationBar {
            let navigationBarBackgroundView = UIView()
            navigationBarBackgroundView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: navigationBar.bounds.height + UIApplication.shared.statusBarFrame.height)
            navigationBarBackgroundView.setGradientBackground(colorTop: .blue, colorBottom: .green)
            view.addSubview(navigationBarBackgroundView)
        }
    }
}
