//
//  CustomQuantitySubVC.swift
//  IOS Challenge 4
//
//  Created by 王富生 on 2017/3/2.
//  Copyright © 2017年 王富生. All rights reserved.
//

import UIKit

class CustomQuantitySubVC: UIViewController {
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var filterView: UIView!
    
    var quantity = 0
    
    var delegate: CustomQuantityDelegate?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        titleLable.textColor = UIColor.btnBlue
        money.textColor = UIColor.white
        
        money.text = String(quantity)
        
        filterView.backgroundColor = .white
        filterView.layer.borderColor = UIColor.btnBlue.cgColor
        filterView.layer.borderWidth = 1
        filterView.layer.cornerRadius = 22
        
//        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
    }
    
    @IBAction func add(_ sender: UIButton) {
        quantity += 1
        money.text = String(quantity)
    }
    
    @IBAction func minut(_ sender: UIButton) {
        if quantity > 0 {
            quantity -= 1
            money.text = String(quantity)
        }
    }
    @IBAction func enter(_ sender: EnterButton) {
        delegate?.quantity = quantity
        dismiss(animated: true, completion: nil)
    }
}







