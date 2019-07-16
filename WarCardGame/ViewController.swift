//
//  ViewController.swift
//  WarCardGame
//
//  Created by MacBook Pro  on 7/14/19.
//  Copyright © 2019 MacBook Pro . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
  
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)

        // Update the random number
       leftImageView.image = UIImage(named: "card\(leftNumber)")
       rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        // Compare the random number
        if leftNumber > rightNumber {
            
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
        }
        
    }

}
