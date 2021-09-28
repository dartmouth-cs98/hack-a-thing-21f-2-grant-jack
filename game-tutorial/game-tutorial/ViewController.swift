//
//  ViewController.swift
//  game-tutorial
//
//  Created by Grant Dumanian on 9/27/21.
//  Copyright © 2021 Grant Dumanian. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var highButton: UIButton!
    @IBOutlet weak var lowButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var cardLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeCard()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func randomizeCard() {
        var currentCardValue = Int.random(in: 1 ... 13)
        cardLabel.text = String(currentCardValue)
    }
    
    
    @IBAction func highButtonPressed(_ sender: Any) {
        randomizeCard()
    }
    @IBAction func lowButtonPressed(_ sender: Any) {
        randomizeCard()
    }
    
}

