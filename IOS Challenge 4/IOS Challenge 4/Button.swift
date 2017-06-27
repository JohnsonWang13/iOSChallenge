//
//  Button.swift
//  IOS Challenge 4
//
//  Created by 王富生 on 2017/3/2.
//  Copyright © 2017年 王富生. All rights reserved.
//

import UIKit

class fastButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 22.0
        
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 1.0
        
        self.backgroundColor = UIColor.white
        self.tintColor = UIColor.gray
        
    }
}

class CustomQuantity : UIButton{
    
    let blueCustomQuantitly = UIImage(named: "blueCustom")
    let grayCustomQuantitly = UIImage(named: "grayCustom")
    
    var isBlue: Bool = false {
        didSet {
            if isBlue == true {
                self.setImage(blueCustomQuantitly, for: .normal)
                self.tintColor = UIColor.white
            } else {
                self.setImage(grayCustomQuantitly, for: .normal)
                self.tintColor = UIColor.gray
            }
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setImage(grayCustomQuantitly, for: .normal)
        self.tintColor = UIColor.gray
    }
}

class EnterButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 22.0
        
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 1.0
        
        self.backgroundColor = UIColor.btnBlue
        self.tintColor = UIColor.white
        
    }
}

extension UIButton {
    func set() {
        self.backgroundColor = UIColor.btnBlue
        self.tintColor = UIColor.white
        self.isEnabled = false
    }
    
    func unset() {
        self.backgroundColor = UIColor.white
        self.tintColor = UIColor.gray
        self.isEnabled = true
    }
}
