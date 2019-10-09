//
//  HomeViewController.swift
//  Tembea
//
//  Created by Kevin Lagat on 04/10/2019.
//  Copyright © 2019 Kevin Lagat. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let homeVC = HomeViewController()
//        homeVC.modalPresentationStyle = .fullScreen
//        present(homeVC, animated: true)
//    }
//

    @IBOutlet weak var travelDestinationLabel: UILabel!
    
    @IBOutlet weak var travelDestinationImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUIElements()
    }
    
    func configureUIElements() {
        travelDestinationImage.isUserInteractionEnabled = true
        travelDestinationLabel.isUserInteractionEnabled = true
        travelDestinationImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.elementTap)))
    }
    
    @objc func elementTap() {
        self.present(DestinationTableViewController(), animated: true)
        self.performSegue(withIdentifier: "destinationSegue", sender: self)
        
        
        
    }
    

    
}
