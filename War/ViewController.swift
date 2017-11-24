//
//  ViewController.swift
//  War
//
//  Created by Ismail Ismail on 11/12/17.
//  Copyright © 2017 Ismail Ismail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ! Means an var is preset set with a vlaue
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView : UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var rightScore = 0
    var leftScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButton(sender: UIButton){
        // Randomize Left Number from 0 to 12
        // instead of var use let, let means its a constant, it cannot be assigned another value once set
        let leftNumber = Int(arc4random_uniform(13))
        // Set the left Image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        // Randmomize Right Number from 0 to 12
        let rightNumber = Int(arc4random_uniform(13))
        // Set the right Image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        // Compare the card numbers
        if leftNumber > rightNumber{
            // left card wins
            leftScore += 1
            // update the label
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber == rightNumber{
            // its a tie
            
        }
        else {
            // right card wins
            rightScore += 1
            
            // update the label
            rightScoreLabel.text = String(rightScore)
            
        }
        
    }
    
}

