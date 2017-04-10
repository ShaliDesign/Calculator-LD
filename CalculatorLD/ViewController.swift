//
//  ViewController.swift
//  CalculatorLD
//
//  Created by Linh&ShawnD on 2017-04-10.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var distanceBetweenInputTextFieldAndResultLabel: NSLayoutConstraint!
    
    @IBOutlet weak var distanceBetweenResultLabelAndMiddleView: NSLayoutConstraint!
    
    @IBOutlet weak var inputTextField: UITextView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    //creating variables
    
    var isTappingNumber : Bool = false
    
    var isEndOperation : Bool = true
    
    var firstNumber : Double = 0
    
    var secondNumber : Double = 0
    
    var operation : String = ""
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.isUserInteractionEnabled = false
        
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    updateConstraints()
        
        
    }
    
        
        
        func updateConstraints() -> Void {
            
        let scale = UIScreen.main.bounds.size.height / 667
            
            distanceBetweenResultLabelAndMiddleView.constant = UIScreen.main.bounds.size.height > 488 ? distanceBetweenResultLabelAndMiddleView.constant * scale :distanceBetweenResultLabelAndMiddleView.constant * 0.1
        
            
            distanceBetweenInputTextFieldAndResultLabel.constant = UIScreen.main.bounds.size.height > 488 ? distanceBetweenInputTextFieldAndResultLabel.constant * scale : distanceBetweenInputTextFieldAndResultLabel.constant * 0.1
        }
        
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Connecting Action Buttons
    
    
    @IBAction func numberAction(_ sender: UIButton) {
        
        let number = sender.currentTitle
        
        if isTappingNumber { inputTextField.text = inputTextField.text! + number!}
            
        else { inputTextField.text = number
            isTappingNumber = true
        
        
        }
        
    }
    
    @IBAction func OperatorAction(_ sender: UIButton) {
        
        operation = sender.currentTitle!
        
        if let inputOperation = Double(inputTextField.text!) {
            
        if isEndOperation == false {
            
            firstNumber = Double(resultLabel.text!)!
            
            inputTextField.text = "\(firstNumber)"
            
        }else{
            firstNumber = inputOperation
            isEndOperation = false
        }
            
    }else{
        print("Ban Can Nhap So Truoc Khi Tinh Toan")
        
        }
    
    isTappingNumber = false
    
    if operation == "%" {
        
    equalAction(sender)
    
    } else if operation == "+/-" {
        
    equalAction(sender)
        
    }
    }
    
    
    @IBAction func equalAction(_ sender: UIButton) {
        
        isTappingNumber = false
        var result : Double = 0
        
        if let realSecondNumber = Double(inputTextField.text!) {
            
            secondNumber = realSecondNumber
            
        }
        
        
        switch operation{
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "/":
            result = firstNumber / secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "%":
            result = firstNumber / 100
        case "+/-":
            if firstNumber < 0 {
                firstNumber = fabs(firstNumber)
                result = firstNumber
            }else{
                firstNumber = -1 * firstNumber
                result = firstNumber
            }
            inputTextField.text = "\(result)"
        default:
            print("Error Operation")
        
        }
        
        resultLabel.text = "\(result)"
        
    }
    

    
    @IBAction func ACAction(_ sender: Any) {
        firstNumber = 0
        secondNumber = 0
        inputTextField.text = ""
        resultLabel.text = "0"
        isEndOperation = true

    }

    

    

}

