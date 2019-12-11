//
//  ViewController.swift
//  Applepie
//
//  Created by Rohit Kuber on 11/12/19.
//  Copyright © 2019 Rohit Kuber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var TreeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
         let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
            currentGame.playerGuessed(letter: letter)
            updateUI()
        updateGameState()
}
    
//    All variable Declarations
    var listOfWords = [ "swift" , "apple" ,"glorious","incandescent", "bug", "program"]

    let incorrectMovesAllowed = 7
  
    var currentGame: Game!
    
    var totalWins = 0 {
           didSet {
               newRound()
           }
       }
       var  totalLosses = 0 {
           didSet {
               newRound()
           }
       }
    
    
//    Function for updating UI Features
        func updateUI(){
            var letters = [String]()
                for letter in currentGame.formattedWord{
                    letters.append(String(letter))
                }
                let wordWithSpacing = letters.joined(separator: " ")
                correctWordLabel.text = wordWithSpacing
//            print(wordWithSpacing)

            scoreLabel.text = "Wins: \(totalWins), Losses:\(totalLosses)"
    TreeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        }

    
    //        Function to update game state
        func updateGameState(){
            if currentGame.incorrectMovesRemaining == 0 {
                totalLosses += 1
              } else if currentGame.word == currentGame.formattedWord {
                totalWins += 1
              } else {
                updateUI()
              }

}

func enableLetterButtons(_ enable: Bool){
        for button in letterButtons {
        button.isEnabled = enable
        }
    }

    
//    Function for new round
        func newRound() {
            if !listOfWords.isEmpty{
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining:
        incorrectMovesAllowed, guessedLetters: [])
        updateUI()
    }
            else{
                enableLetterButtons(false)
            }

}

}
