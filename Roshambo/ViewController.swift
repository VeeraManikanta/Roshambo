//
//  ViewController.swift
//  Roshambo
//
//  Created by Apple on 20/11/17.
//  Copyright © 2017 Wipro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   

    @IBAction func performRock(_ sender: Any) {
        var controller: ResultViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.result = 1
        present(controller, animated: true, completion: nil)
    }

    @IBAction func performScissor(_ sender: Any) {
        
        performSegue(withIdentifier: "performPaper", sender: self)
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "performScissor" {
            let controller = segue.destination as! ResultViewController
            controller.result = 3
            present(controller, animated: true, completion: nil)
           
        }
    }
}

