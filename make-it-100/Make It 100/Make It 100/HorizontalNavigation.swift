//
//  HorizontalNavigation.swift
//  Make_It_100
//
//  Created by Raul (Private) on 11.05.20.
//  Copyright © 2020 Raul Sulaimanov. All rights reserved.
//

import UIKit

class HorizontalNavigation: UIView {
    
    //MARK: - Button Variables
    var pushUpsButton: UIButton?
    var squatsButton: UIButton?
    var stretchingButton: UIButton?
    var onOpenPushUpsVC: (() -> Void)?
    var onOpenStretchingVC: (() -> Void)?
    var onOpenSquatsVC: (() -> Void)?

    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        backgroundColor = .gray
        
        let pushUpsButton = button("pushups", #selector(openPushUpsVC))
        addSubview(pushUpsButton)
        self.pushUpsButton = pushUpsButton
        
        let stretchingButton = button("stretching", #selector(openStretchingVC))
        addSubview(stretchingButton)
        self.stretchingButton = stretchingButton
        
        let squatsButton = button("squats", #selector(opensquatsVC))
        addSubview(squatsButton)
        self.squatsButton = squatsButton
        
        //MARK: - Layout
        pushUpsButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        pushUpsButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        pushUpsButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
        pushUpsButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        stretchingButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        stretchingButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        stretchingButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stretchingButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        squatsButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        squatsButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        squatsButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
        squatsButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) { return nil }
    
    func button(_ imageName: String, _ selector: Selector) -> UIButton {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.clipsToBounds = true
            button.addTarget(self, action: selector, for: .touchUpInside)
            button.setImage(UIImage(named: imageName), for: [])
            button.imageView?.contentMode = .scaleAspectFit
        button.backgroundColor = .white
            
            return button
        }
    
    @objc func openPushUpsVC() {
        onOpenPushUpsVC?()
    }
    
    @objc func opensquatsVC() {
        onOpenSquatsVC?()
    }
    
    @objc func openStretchingVC() {
        onOpenStretchingVC?()
    }
        
    
}
