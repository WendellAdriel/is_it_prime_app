//
//  ViewController.swift
//  Is It Prime
//
//  Created by Wendell Adriel on 27/02/2017.
//  Copyright © 2017 CodeShare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func isItPrime(_ sender: Any) {
        if let userEnteredString = numberInput.text {
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                if isPrime(number: number) {
                    resultLabel.text = "\(number) is prime!"
                    resultLabel.textColor = UIColor.green
                } else {
                    resultLabel.text = "\(number) is not prime..."
                    resultLabel.textColor = UIColor.orange
                }
            } else {
                resultLabel.text = "Please enter a positive number"
                resultLabel.textColor = UIColor.red
            }
        }
    }
    
    func isPrime(number:Int) -> Bool {
        var isPrime = true
        if number == 1 {
            isPrime = false
        }
        
        var i = 2
        
        while i < number {
            if number % i == 0 {
                isPrime = false
            }
            i += 1
        }
        return isPrime
    }
}

