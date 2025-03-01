//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var wishBall: UIImageView!
    
    var ball = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wishBall.alpha = 0.5
    }
    // Button
    
    @IBAction func askButton(_ sender: Any) {
        wishBall.alpha = 1
        
        let spinBall = [
            UIImage(named: "ball1"),
            UIImage(named: "ball2"),
            UIImage(named: "ball3"),
            UIImage(named: "ball4"),
            UIImage(named: "ball5")
        ]
        
        let randomBall = Int.random(in: 0...4)
        
        wishBall.image = spinBall[randomBall]
    }
}

