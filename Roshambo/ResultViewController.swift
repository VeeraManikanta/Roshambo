//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Apple on 20/11/17.
//  Copyright © 2017 Wipro. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var result :Int  = 0
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var labelRock: UILabel!
   
    func randomValue() -> Int {
        let randomValue = 1 + arc4random() % 3
        return Int(randomValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let opponent = self.randomValue()
        if opponent == result{
            labelRock.text="It's a Tie"
            resultImage.image = UIImage(named: "itsATie")
        }
        else if opponent == 1 && result == 2{
            labelRock.text="Paper Covers Rock. You Win!"
            resultImage.image = UIImage(named: "PaperCoversRock")
        }
        else if opponent == 1 && result == 3{
            labelRock.text="Rock Crushes Scissors. You Lose!"
            resultImage.image = UIImage(named: "RockCrushesScissors")
        }
        else if opponent == 2 && result == 1{
            labelRock.text="Paper Covers Rock. You Lose!"
            resultImage.image = UIImage(named: "PaperCoversRock")
        }
        else if opponent == 2 && result == 3{
            labelRock.text="Scissors cut Paper. You Win!"
            resultImage.image = UIImage(named: "ScissorsCutPaper")
        }
        else if opponent == 3 && result == 1{
            labelRock.text="Rock Crushes Scissors. You Win!"
            resultImage.image = UIImage(named: "RockCrushesScissors")
        }
        else if opponent == 3 && result == 2{
            labelRock.text="Scissors cut Paper. You Lose!"
            resultImage.image = UIImage(named: "ScissorsCutPaper")
        }
        
    }
    
    


    @IBAction func playAgain(_ sender: Any) {
       self.dismiss(animated: true, completion: nil)
    }
}
