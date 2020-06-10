//
//  Profile.swift
//  Make_It_100
//
//  Created by Raul (Private) on 10.06.20.
//  Copyright © 2020 Raul Sulaimanov. All rights reserved.
//

import UIKit

class Profile: UIView {
    //Subviews:
    var nameView: UITextView?
    var profilePictureView: UIImageView?
    var ageView: UITextView?
    var sexView: UITextView?
    var weightView: UITextView?
    var heightView: UITextView?
    
    // Data & Measures:
    var name: String? = "Unnamed Kitten"
    var profilePicture: UIImage? = UIImage(named: "profile")
    var age: Int? = 26
    var sex: String? = "Male"
    var weight: Float? = 95.6
    var height: Float? = 184
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        
        let profilePictureView = UIImageView(image: profilePicture)
        profilePictureView.translatesAutoresizingMaskIntoConstraints = false
        profilePictureView.clipsToBounds = true
        profilePictureView.sizeToFit()
        addSubview(profilePictureView)
        self.profilePictureView = profilePictureView
        
        let nameView: UITextView = UITextView()
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.clipsToBounds = true
        nameView.text = name
        nameView.textAlignment = .center
        nameView.backgroundColor = UIColor(white: 1, alpha: 0)
        addSubview(nameView)
        self.nameView = nameView
        
        let ageView: UITextView = UITextView()
        ageView.translatesAutoresizingMaskIntoConstraints = false
        ageView.clipsToBounds = true
        if age != nil {
            ageView.text = "Age: \(String(describing: age))"
        } else {
            ageView.text = "Age: Data not provided"
        }
        ageView.textAlignment = .left
        ageView.backgroundColor = UIColor(white: 1, alpha: 0.5)
        addSubview(ageView)
        self.ageView = ageView
        
        let sexView: UITextView = UITextView()
        sexView.translatesAutoresizingMaskIntoConstraints = false
        sexView.clipsToBounds = true
        if sex != nil {
            sexView.text = "Sex: \(String(describing: sex))"
        } else {
            sexView.text = "Sex: Data not provided"
        }
        sexView.textAlignment = .left
        sexView.backgroundColor = UIColor(white: 1, alpha: 0.5)
        addSubview(sexView)
        self.sexView = sexView
        
        let weightView: UITextView = UITextView()
        weightView.translatesAutoresizingMaskIntoConstraints = false
        weightView.clipsToBounds = true
        if weight != nil {
            weightView.text = "Weight: \(String(describing: weight))"
        } else {
            weightView.text = "Weight: Data not provided"
        }
        weightView.textAlignment = .left
        weightView.backgroundColor = UIColor(white: 1, alpha: 0.5)
        addSubview(weightView)
        self.weightView = weightView
        
        let heightView: UITextView = UITextView()
        heightView.translatesAutoresizingMaskIntoConstraints = false
        heightView.clipsToBounds = true
        if height != nil {
            heightView.text = "Height: \(String(describing: height))"
        } else {
            heightView.text = "Hieght: Data not provided"
        }
        heightView.textAlignment = .left
        heightView.backgroundColor = UIColor(white: 1, alpha: 0.5)
        addSubview(heightView)
        self.heightView = heightView
        
        
        //MARK: - Layout
        profilePictureView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        profilePictureView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        profilePictureView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        profilePictureView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        
        nameView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        nameView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nameView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameView.bottomAnchor.constraint(equalTo: profilePictureView.safeAreaLayoutGuide.topAnchor, constant: -5).isActive = true
        
        ageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        ageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        ageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        ageView.topAnchor.constraint(equalTo: profilePictureView.safeAreaLayoutGuide.bottomAnchor, constant: 5).isActive = true
        
        sexView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        sexView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        sexView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        sexView.topAnchor.constraint(equalTo: ageView.safeAreaLayoutGuide.bottomAnchor, constant: 5).isActive = true
        
        weightView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        weightView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        weightView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        weightView.topAnchor.constraint(equalTo: sexView.safeAreaLayoutGuide.bottomAnchor, constant: 5).isActive = true
        
        heightView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        heightView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        heightView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        heightView.topAnchor.constraint(equalTo: weightView.safeAreaLayoutGuide.bottomAnchor, constant: 5).isActive = true
    }
    
    required init?(coder: NSCoder) { return nil }
    
}
