//
//  ViewController.swift
//  game-tutorial
//
//  Created by Grant Dumanian on 9/27/21.
//  Copyright © 2021 Grant Dumanian. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    var previousCardValue = 0
    var currentCardValue = 0
    var score = 0

    
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
        previousCardValue = currentCardValue
        currentCardValue = Int.random(in: 1 ... 13)
        cardLabel.text = String(currentCardValue)
    }
    
    func increaseScore() {
        score = score + 1
        scoreLabel.text = "Score: " + String(score)
    }
    
    func gameOver() {
        scoreLabel.text = "Game over!"
        score = 0
    }
    
    @IBAction func highButtonPressed(_ sender: Any) {
        randomizeCard()
        if currentCardValue >= previousCardValue {
            increaseScore()
        } else {
            gameOver()
        }
    }
    @IBAction func lowButtonPressed(_ sender: Any) {
        if currentCardValue < previousCardValue {
            increaseScore()
        } else {
            gameOver()
        }
    }
}


