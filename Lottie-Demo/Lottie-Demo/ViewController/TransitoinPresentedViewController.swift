//
//  TransitoinPresentedViewController.swift
//  Lottie-Demo
//
//  Created by 王富生 on 2017/2/6.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import UIKit

class TransitionPresentedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bounds = UIScreen.main.bounds
        
        let closeButton = TransitionPresentedVCButton(frame: CGRect(x: bounds.maxX / 2 - 75, y: bounds.maxY / 2, width: 150, height: 44))
        closeButton.setTitle("Close", for: .normal)
        closeButton.addTarget(self, action: #selector(closeBtn), for: .touchUpInside)
        
        view.backgroundColor = UIColor(red: 182/255, green: 208/255, blue: 201/255, alpha: 1)
        view.addSubview(closeButton)
        
    }
    
    func closeBtn() {
        dismiss(animated: true, completion: nil)
    }

}

class TransitionPresentedVCButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.frame = frame
        
        self.layer.cornerRadius = 1.0
        
        self.backgroundColor = UIColor(red: 31/255, green: 151/255, blue: 146/255, alpha: 1)
        self.tintColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
