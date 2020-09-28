//
//  ViewController.swift
//  UIView+Shake Example
//
//  Created by Jacob Van Brunt on 9/28/20.
//  Copyright © 2020 Jacob Van Brunt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func shakeButtonPressed(sender: UIButton) {
        sender.shake()
    }

}

