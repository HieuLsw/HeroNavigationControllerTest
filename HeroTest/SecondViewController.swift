//
//  SecondViewController.swift
//  HeroTest
//
//  Created by Oleksandr Vitruk on 09.03.18.
//  Copyright © 2018 Alex Vitruk. All rights reserved.
//

import UIKit
import Hero

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.navigationController?.popViewController(animated: true)
        }
    }
}
