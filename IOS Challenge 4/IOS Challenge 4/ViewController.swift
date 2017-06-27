//
//  ViewController.swift
//  IOS Challenge 4
//
//  Created by 王富生 on 2017/3/2.
//  Copyright © 2017年 王富生. All rights reserved.
//

import UIKit

protocol CustomQuantityDelegate {
    var quantity: Int { get set}
}

class ViewController: UIViewController, CustomQuantityDelegate {
    
    let subVC = CustomQuantitySubVC()
    
    var quantity = 0 {
        didSet {
            self.money.text = String(quantity) + " 元"
            self.customMoney.text = self.money.text!
        }
    }
    
    @IBOutlet weak var fast5: fastButton!
    @IBOutlet weak var fast20: fastButton!
    @IBOutlet weak var fast50: fastButton!
    @IBOutlet weak var fastLight: UIImageView!
    
    @IBOutlet weak var customQuantity: CustomQuantity!
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var customLight: UIImageView!
    @IBOutlet weak var customMoney: UILabel!
    
    @IBAction func fastBtnAction(_ sender: fastButton) {
        unsetAll()
        sender.set()
        money.text = sender.currentTitle! + " 元"
        fastLight.image = UIImage(named: "click1")
    }
    
    @IBAction func customQuantityBtn(_ sender: CustomQuantity) {
        unsetAll()
        sender.isBlue = true
        money.text = sender.currentTitle! + " 元"
        customLight.image = UIImage(named: "click1")
//
//        let popoutVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FilterID") as! CustomQuantitySubVC
//        
//        popoutVC.modalTransitionStyle = .crossDissolve
//        popoutVC.modalPresentationStyle = .fullScreen
//        
//        popoutVC.quantity = quantity
//        popoutVC.delegate = self
//        
//        self.addChildViewController(popoutVC)
//        popoutVC.view.frame = self.view.frame
//        self.view.addSubview(popoutVC.view)
//        popoutVC.didMove(toParentViewController: self)
    }
    
    
    func unsetAll() {
        fast5.unset()
        fast20.unset()
        fast50.unset()
        customQuantity.isBlue = false
        fastLight.image = UIImage(named: "click2")
        customLight.image = UIImage(named: "click2")
    }
}

