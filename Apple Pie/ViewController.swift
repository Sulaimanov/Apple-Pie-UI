//
//  ViewController.swift
//  Apple Pie
//
//  Created by Denis Bystruev on 29/03/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    var listOfWords = [
        "анна",
        "настя",
        "маша"
    ]
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totaILoss = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        
    }
    
    var currentGame: Game!
    
    func newRound()  {
        
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorectMovesRenaining: incorrectMovesAllowed)
    }
}
