//
//  ViewController.swift
//  CalculatorFirefly
//
//  Created by Edwin Torres on 1/27/21.
//

import UIKit

enum Operation: String {
    case Add = "+"
    case Subtract = "-"
    case Divide = "/"
    case Multiply = "*"
    case NULL = "Null"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var runningNum = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation: Operation = .NULL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputLabel.text = "0"
        
    }
    
    @IBAction func numPressed(_ sender: CircleButton) {
        if runningNum.count <= 8 {
            runningNum += "\(sender.tag)"
            outputLabel.text = runningNum
        }
    }
    
    @IBAction func clearPressed(_ sender: Any) {
        runningNum = ""
        leftValue = ""
        rightValue = ""
        result = ""
        currentOperation = .NULL
        outputLabel.text = "0"
    }
    @IBAction func decimalPressed(_ sender: Any) {
        if runningNum.count <= 7 && !runningNum.contains(".") {
            runningNum += "."
            outputLabel.text = runningNum
        }
    }
    @IBAction func equalPressed(_ sender: Any) {
        
    }
    @IBAction func plusPressed(_ sender: Any) {
        
    }
    @IBAction func minusPressed(_ sender: Any) {
        
    }
    @IBAction func multiplyPressed(_ sender: Any) {
        
    }
    @IBAction func dividePressed(_ sender: Any) {
        
    }
}

