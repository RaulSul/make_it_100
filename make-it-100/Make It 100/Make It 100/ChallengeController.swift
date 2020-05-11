//
//  ChallengeController.swift
//  Make It 100
//
//  Created by Raul (Private) on 05.05.20.
//  Copyright © 2020 Raul Sulaimanov. All rights reserved.
//

import UIKit

class ChallengeController: UIViewController {
    
    // Buttons:
    var repeatButton: UIButton?
    
    // Record Keeping:
    var currentRepeat: Int = 0
    var repeatLabel: UILabel?
    
    var currentSet: Int = 0
    var currentWeek: Int = 0
    var pauseTimer: Float = 0
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repeatButton = UIButton()
        repeatButton.translatesAutoresizingMaskIntoConstraints = false
        repeatButton.clipsToBounds = true
        repeatButton.setTitle("Press Me", for: [])
        repeatButton.addTarget(self, action: #selector(repeatButtonPress), for: .touchUpInside)
        repeatButton.backgroundColor = .green
        view.addSubview(repeatButton)
        self.repeatButton = repeatButton
        
        let repeatLabel: UILabel = UILabel()
        repeatLabel.translatesAutoresizingMaskIntoConstraints = false
        repeatLabel.clipsToBounds = true
        repeatLabel.text = String(currentRepeat)
        repeatLabel.textAlignment = .center
        repeatLabel.backgroundColor = .blue
        view.addSubview(repeatLabel)
        self.repeatLabel = repeatLabel
        
        //MARK: - Layout
        repeatButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        repeatButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        repeatButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        repeatButton.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        repeatLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        repeatLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        repeatLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        repeatLabel.bottomAnchor.constraint(equalTo: repeatButton.topAnchor, constant: 15).isActive = true
    }
    
    @objc func repeatButtonPress() {
        currentRepeat += 1
        repeatLabel?.text = String(currentRepeat)
        print("Current repeat is: \(currentRepeat)")
    }
    
    
}
