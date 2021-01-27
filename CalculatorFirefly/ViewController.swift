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
        if outputLabel.text != "0" {
            if runningNum.count <= 7 && !runningNum.contains(".") {
                runningNum += "."
                outputLabel.text = runningNum
            }
        } else {
            runningNum = "0."
            outputLabel.text = runningNum
        }
    }
    @IBAction func equalPressed(_ sender: Any) {
        operation(operation: currentOperation)
    }
    @IBAction func plusPressed(_ sender: Any) {
        operation(operation: .Add)
    }
    @IBAction func minusPressed(_ sender: Any) {
        operation(operation: .Subtract)
    }
    @IBAction func multiplyPressed(_ sender: Any) {
        operation(operation: .Multiply)
    }
    @IBAction func dividePressed(_ sender: Any) {
        operation(operation: .Divide)
    }
    
    func operation(operation: Operation) {
        if currentOperation != .NULL {
            if runningNum != "" {
                rightValue = runningNum
                runningNum = ""
                
                if currentOperation == .Add {
                    result = "\(Double(leftValue)! + Double(rightValue)!)"
                } else if currentOperation == .Subtract {
                    result = "\(Double(leftValue)! - Double(rightValue)!)"
                } else if currentOperation == .Multiply {
                    result = "\(Double(leftValue)! * Double(rightValue)!)"
                } else if currentOperation == .Divide {
                    result = "\(Double(leftValue)! / Double(rightValue)!)"
                }
                leftValue = result
                if(Double(result)!.truncatingRemainder(dividingBy: 1) == 0) {
                    result = "\(Int(Double(result)!))"
                }
                outputLabel.text = result
            }
            currentOperation = operation
        } else {
            leftValue = runningNum
            runningNum = ""
            currentOperation = operation
        }
    }
}
