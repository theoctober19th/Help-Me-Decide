//
//  ViewController.swift
//  Help Me Decide!
//
//  Created by Bikalpa Dhakal on 6/5/19.
//  Copyright © 2019 Bikalpa Dhakal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var diceImageIndex1:Int = 0
    var diceImageIndex2:Int = 0
    
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeDiceImages()
    }
    
    //detecting the shake gesture
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDiceImages()
    }
    
    func changeDiceImages(){
        diceImageIndex1 = Int.random(in: 0...5)
        diceImageIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: diceImages[diceImageIndex1])
        diceImageView2.image = UIImage(named: diceImages[diceImageIndex2])
    }
    
}

