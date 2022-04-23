//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allow reference of UI element.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceMessageLabel: UILabel!
    
    var diceArray = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("rollButtonPressed")
        let leftIndex = Int.random(in:0...5)
        let rightIndex = Int.random(in:0...5)
        let diceSum = leftIndex + rightIndex + 2
        var isRollDouble = false
        if ( leftIndex == rightIndex ) {
            isRollDouble = true
        }
        var diceMsg = "\(diceSum), nice roll!"
        if ( isRollDouble ) {
            diceMsg = "DOUBLE for \(diceSum)!"
        }
        
        diceImageView1.image = diceArray[leftIndex]
        diceImageView2.image = diceArray[rightIndex]
        
        diceMessageLabel.text = diceMsg
    }
}

