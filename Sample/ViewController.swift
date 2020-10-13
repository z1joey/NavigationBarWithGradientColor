//
//  ViewController.swift
//  Sample
//
//  Created by joey on 10/12/20.
//  Copyright © 2020 tecpal. All rights reserved.
//

import UIKit
import NavigationBarWithGradientColor

class ViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isTransparent = true
        navigationController?.navigationBar.textColor = .white
    }
}
