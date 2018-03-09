//
//  ViewController.swift
//  HeroTest
//
//  Created by Oleksandr Vitruk on 09.03.18.
//  Copyright © 2018 Alex Vitruk. All rights reserved.
//

import UIKit
import Hero

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
            viewController.hero.isEnabled = true
            
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

