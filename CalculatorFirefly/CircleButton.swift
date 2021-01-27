//
//  CircleButton.swift
//  CalculatorFirefly
//
//  Created by Edwin Torres on 1/27/21.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {
        
        @IBInspectable var circleButton: Bool = false {
            didSet {
                if circleButton {
                    layer.cornerRadius = frame.height / 2
                    layer.borderWidth = 2
                    layer.borderColor = UIColor(red:67/225, green:73/225, blue:125/225, alpha: 1).cgColor
                }
            }
        }
        override func prepareForInterfaceBuilder() {
            
                if circleButton {
                    layer.cornerRadius = frame.height / 2
                    layer.borderWidth = 2
                    layer.borderColor = UIColor(red:67/225, green:73/225, blue:125/225, alpha: 1).cgColor
        }
    }
}

@IBDesignable
class OperatorlButton: UIButton {
        
        @IBInspectable var operatorlButton: Bool = false {
            didSet {
                if operatorlButton {
                    layer.cornerRadius = frame.width / 2
                }
            }
        }
        override func prepareForInterfaceBuilder() {
            
                if operatorlButton {
                    layer.cornerRadius = frame.width / 2
        }
    }
}

@IBDesignable
class ClearButton: UIButton {
        
        @IBInspectable var clearButton: Bool = false {
            didSet {
                if clearButton {
                    layer.cornerRadius = frame.height / 2
                    layer.borderWidth = 2
                    layer.borderColor = UIColor(red:67/225, green:73/225, blue:125/225, alpha: 1).cgColor
                }
            }
        }
        override func prepareForInterfaceBuilder() {
            
                if clearButton {
                    layer.cornerRadius = frame.height / 2
                    layer.borderWidth = 2
                    layer.borderColor = UIColor(red:243/225, green:215/225, blue:107/225, alpha: 1).cgColor
        }
    }
}
