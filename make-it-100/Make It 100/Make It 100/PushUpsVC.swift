//
//  PushUpsVC.swift
//  Make It 100
//
//  Created by Raul (Private) on 05.05.20.
//  Copyright © 2020 Raul Sulaimanov. All rights reserved.
//

import UIKit

class PushUpsVC: ChallengeController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - Background
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.90, green: 0.04, blue: 0.04, alpha: 1.00).cgColor, UIColor(red: 0.91, green: 0.43, blue: 0.09, alpha: 1.00).cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        //MARK: - Layout
        
    }
    
    
}

