//
//  ViewController.swift
//  DogYears
//
//  Created by Andrea on 31/10/2019.
//  Copyright © 2019 Andrea P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    
    @IBOutlet weak var dogAge: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if let age = dogAge.text {
            
            if let ageNumber = Int(age) {
                
                let dogAgeNumber = ageNumber * 7
                
                label.text = "Your dog is \(dogAgeNumber) years old."
            }
            
        }
        
    }
    
    func setBackground() {
        
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "cuteDog")
        view.sendSubviewToBack(backgroundImageView)
        backgroundImageView.contentMode = UIView.ContentMode.scaleAspectFill
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setBackground()
    }


}

