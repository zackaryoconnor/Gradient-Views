//
//  ViewController.swift
//  Gradient Views
//
//  Created by Zackary O'Connor on 6/18/18.
//  Copyright © 2018 Zackary O'Connor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradient(colorOne: .purple, colorTwo: .orange)
    }
    
}




extension UIView {
    func setGradient(colorOne: UIColor, colorTwo: UIColor) {
        let gradientView = CAGradientLayer()
        gradientView.frame = self.bounds
        gradientView.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientView.locations = [0.0, 1.0]
        gradientView.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientView.endPoint = CGPoint(x: 1.0, y: 1.0)
        layer.insertSublayer(gradientView, at: 0)
    }
    
}
