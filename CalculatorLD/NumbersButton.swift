//
//  NumbersButton.swift
//  CalculatorLD
//
//  Created by Linh&ShawnD on 2017-04-10.
//  Copyright © 2017 Shali Design. All rights reserved.
//

import UIKit

class NumbersButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        changeNumbersButtonStyle()
    
    }
    
    func changeNumbersButtonStyle() -> Void {
        
        if tag == 102 { backgroundColor = UIColor.init(red: 253/255, green: 102/255, blue: 205/255, alpha: 1)}
        else { backgroundColor = UIColor.init(red: 238/255, green: 214/255, blue: 254/255, alpha: 1)
        
        
    }
        
        layer.cornerRadius = 8.0
        
        titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        self.setTitleColor(UIColor.black, for: .normal)
    
    
}
}
