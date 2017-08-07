//
//  ViewController.swift
//  Calculator
//
//  Created by Алексей Вильчанский on 06/08/2017.
//  Copyright © 2017 Алексей Вильчанский. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var userIsInAMiddleOfTyping = false
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if(userIsInAMiddleOfTyping){
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
        }else{
            display!.text = digit
            userIsInAMiddleOfTyping = true
        }
        print("\(digit) was called")
    }
    
    
}

