//
//  App.swift
//  Make It 100
//
//  Created by Raul (Private) on 13.04.20.
//  Copyright © 2020 Raul Sulaimanov. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain class App: UINavigationController, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    var window: UIWindow?
    
    static weak var shared: App!
    // View Controllers:
    var mainVC : UIViewController?
    var settings: UIViewController?
    var pushUpsVC: UIViewController?
    var squatsVC: UIViewController?
    
    // Buttons:
    var pushUpsButton: UIButton?
    var squatsButton: UIButton?
    var settingsButton: UIButton?
    
    //MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainVC = UIViewController()
        mainVC.view.backgroundColor = UIColor(hue: 0.575, saturation: 0.98, brightness: 0.98, alpha: 1.0)
        pushViewController(mainVC, animated: false)
        self.mainVC = mainVC
        
        let pushUpsVC = ChallengeController()
        self.pushUpsVC = pushUpsVC
        
        let pushUpsButton = button("pushups", #selector(openPushUpsVC))
        mainVC.view.addSubview(pushUpsButton)
        self.pushUpsButton = pushUpsButton
        
        let squatsButton = button("squats", #selector(opensquatsVC))
        mainVC.view.addSubview(squatsButton)
        self.squatsButton = squatsButton
        
        let settingsButton = button("settings", #selector(openSettings))
        mainVC.view.addSubview(settingsButton)
        self.settingsButton = settingsButton
        
        
        //MARK: - Layout
        pushUpsButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        pushUpsButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        pushUpsButton.leftAnchor.constraint(equalTo: mainVC.view.safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
        pushUpsButton.bottomAnchor.constraint(equalTo: mainVC.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        squatsButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        squatsButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        squatsButton.rightAnchor.constraint(equalTo: mainVC.view.safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
        squatsButton.bottomAnchor.constraint(equalTo: mainVC.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        settingsButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        settingsButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        settingsButton.rightAnchor.constraint(equalTo: mainVC.view.safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
        settingsButton.topAnchor.constraint(equalTo: mainVC.view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
    }

    //MARK: - Application Functions
    func alert(error: Error) {
        self.alert("Alert.error", message: error.localizedDescription)
    }
    
    func alert(_ title: String, message: String) {
        UNUserNotificationCenter.current().add( {
            $0.title = .local(title)
            $0.body = message
            return UNNotificationRequest(identifier: UUID().uuidString, content: $0, trigger: nil)
        } (UNMutableNotificationContent()))
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        App.shared = self
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.backgroundColor = .black
        window!.makeKeyAndVisible()
        window!.rootViewController = self
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) { _, _ in }
        
        return true
    }
    
    func userNotificationCenter(_: UNUserNotificationCenter, willPresent:
        UNNotification, withCompletionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        withCompletionHandler([.alert])
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 3) {
            UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [willPresent.request.identifier])
        }
    }
    
    //MARK: - Miscellanious
    
    func button(_ imageName: String, _ selector: Selector) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.addTarget(self, action: selector, for: .touchUpInside)
//        button.setTitle(title, for: [])
        button.setImage(UIImage(named: imageName), for: [])
        button.imageView?.contentMode = .scaleAspectFit
        
        return button
    }
    
    @objc func openPushUpsVC() {
        guard let pushUpsVC = pushUpsVC else { return }
        
        if viewControllers.count < 2 {
            pushViewController(pushUpsVC, animated: true)
        }
    }
    
    @objc func opensquatsVC() {
        guard let squatsVC = squatsVC else { return }
        
        if viewControllers.count < 2 {
            pushViewController(squatsVC, animated: true)
        }
    }
    
    @objc func openSettings() {
        guard let settings = settings else { return }
        
        if viewControllers.count < 2 {
            pushViewController(settings, animated: true)
        }
    }
}

