//
//  AppDelegate.swift
//  HeroTest
//
//  Created by Oleksandr Vitruk on 09.03.18.
//  Copyright © 2018 Alex Vitruk. All rights reserved.
//

import UIKit
import Hero

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        Hero.shared.containerColor = .yellow
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController")
        viewController.hero.isEnabled = true
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.setNavigationBarHidden(true, animated: false)
        navigationController.hero.isEnabled = true
        navigationController.hero.navigationAnimationType = .selectBy(presenting: .zoom,
                                                                      dismissing: .zoomOut)
        
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        
        return true
    }
}

