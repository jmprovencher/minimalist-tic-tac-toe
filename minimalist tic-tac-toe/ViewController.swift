//
//  ViewController.swift
//  minimalist tic-tac-toe
//
//  Created by Jean-Michel Provencher on 17-04-30.
//  Copyright © 2017 Jean-Michel Provencher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activePlayer = 1
    var gameState = [Int]( repeating: 0, count: 9 )
    
    @IBAction func caseTap(_ sender: AnyObject) {
        if(gameState[sender.tag-1] == 0){
            gameState[sender.tag-1] = activePlayer
            if(activePlayer==1){
    sender.setImage(UIImage(named:"Cross.png"), for: UIControlState())
                activePlayer = 2
            }
            else{
    sender.setImage(UIImage(named:"Nought.png"), for: UIControlState())
                activePlayer = 1
            }
            
            
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

