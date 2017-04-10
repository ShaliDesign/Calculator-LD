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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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


}

