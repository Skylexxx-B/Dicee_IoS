//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet allows me to reference a UI Element
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        //Who          What    Value
        diceImageView1.image = #imageLiteral(resourceName: "dicesix")
        diceImageView2.image = #imageLiteral(resourceName: "dicetwo")
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got Tapped!")
        //constant
        let diceArray = [#imageLiteral(resourceName: "diceone"), #imageLiteral(resourceName: "dicetwo"), #imageLiteral(resourceName: "dicethree"), #imageLiteral(resourceName: "dicefour"), #imageLiteral(resourceName: "dicefive"), #imageLiteral(resourceName: "dicesix")]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    
    }
    @IBAction func exitButton(_ sender: Any) { exit(0)
    }
    @IBAction func settingsButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Settings", message: "Choose an option", preferredStyle: .actionSheet)
               
               let muteAction = UIAlertAction(title: "Mute", style: .default) { (action) in
                   print("Mute option selected")
                   // Add your mute functionality here
               }
               
               let helpAction = UIAlertAction(title: "Help", style: .default) { (action) in
                   print("Help option selected")
                   // Add your help functionality here
               }
               
               let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
               
               alertController.addAction(muteAction)
               alertController.addAction(helpAction)
               alertController.addAction(cancelAction)
               
               present(alertController, animated: true, completion: nil)
           }
    }




