//
//  StartViewController.swift
//  Tembea
//
//  Created by Kevin Lagat on 04/10/2019.
//  Copyright © 2019 Kevin Lagat. All rights reserved.
//

import UIKit
import FirebaseAuth

class StartViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
        }
//        let homeVC = HomeViewController()
//        homeVC.modalPresentationStyle = .fullScreen
//        present(homeVC, animated: true)
    }
    
    
}

