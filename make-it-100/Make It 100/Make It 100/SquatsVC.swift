//
//  SquatsVC.swift
//  Make_It_100
//
//  Created by Raul (Private) on 11.05.20.
//  Copyright © 2020 Raul Sulaimanov. All rights reserved.
//

import Foundation
import UIKit

class SquatsVC: ChallengeController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - Background
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 1.00, green: 0.11, blue: 0.42, alpha: 1.00).cgColor, UIColor(red: 0.27, green: 0.79, blue: 1.00, alpha: 1.00).cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        //MARK: - Layout
    }
}
