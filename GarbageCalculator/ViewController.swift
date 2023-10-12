//
//  ViewController.swift
//  GarbageCalculator
//
//  Created by André Filipe Fonsêca Borba on 10/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    var inputFirstNumber: Int = 0
    var inputSecondNumber: Int = 0
    var resultOutput: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func clearFields(_ sender: UIButton) {
        firstNumber.text = ""
        secondNumber.text = ""
        resultLabel.text = "Result: 0"
    }

    @IBAction func sum(_ sender: UIButton) {
        if let firstNumberText = firstNumber.text, let secondNumberText = secondNumber.text,
           let firstNumber = Int(firstNumberText), let secondNumber = Int(secondNumberText) {
            resultOutput = firstNumber + secondNumber
            resultLabel.text = String(resultOutput)
        } else {
            resultLabel.text = "Invalid input"
        }
    }

    @IBAction func subtract(_ sender: UIButton) {
        if let firstNumberText = firstNumber.text, let secondNumberText = secondNumber.text,
           let firstNumber = Int(firstNumberText), let secondNumber = Int(secondNumberText) {
            resultOutput = firstNumber - secondNumber
            resultLabel.text = String(resultOutput)
        } else {
            resultLabel.text = "Invalid input"
        }
    }

    @IBAction func multiply(_ sender: UIButton) {
        if let firstNumberText = firstNumber.text, let secondNumberText = secondNumber.text,
           let firstNumber = Int(firstNumberText), let secondNumber = Int(secondNumberText) {
            resultOutput = firstNumber * secondNumber
            resultLabel.text = String(resultOutput)
        } else {
            resultLabel.text = "Invalid input"
        }
    }

    @IBAction func divide(_ sender: UIButton) {
        if let firstNumberText = firstNumber.text, let secondNumberText = secondNumber.text,
           let firstNumber = Int(firstNumberText), let secondNumber = Int(secondNumberText) {
            if secondNumber != 0 {
                resultOutput = firstNumber / secondNumber
                resultLabel.text = String(resultOutput)
            } else {
                resultLabel.text = "Division by zero"
            }
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}

