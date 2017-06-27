//
//  TransitionViewController.swift
//  Lottie-Demo
//
//  Created by 王富生 on 2017/2/6.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import UIKit

class TransitionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bounds = UIScreen.main.bounds
        
        let presentButton = TransitionButton(frame: CGRect(x: bounds.maxX / 2 - 75, y: bounds.maxY / 2, width: 150, height: 44))
        presentButton.addTarget(self, action: #selector(presentBtn), for: .touchUpInside)
        presentButton.setTitle("Present", for: .normal)
        
        let closeButton = TransitionButton(frame: CGRect(x: bounds.maxX / 2 - 75, y: bounds.maxY * 3 / 4, width: 150, height: 44))
        closeButton.addTarget(self, action: #selector(closeBtn), for: .touchUpInside)
        closeButton.setTitle("Close", for: .normal)
        
        
        view.backgroundColor = UIColor(red: 255/255, green: 206/255, blue: 173/255, alpha: 1)
        view.addSubview(presentButton)
        view.addSubview(closeButton)
        
    }
    
    func presentBtn() {
        let transition = TransitionAnimate()
        let vc = TransitionPresentedViewController()
        vc.transitioningDelegate = transition
        present(vc, animated: true, completion: nil)
    }
    
    func closeBtn() {
        dismiss(animated: true, completion: nil)
    }
    
}

class TransitionButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.frame = frame
        
        self.layer.cornerRadius = 1.0
        
        self.backgroundColor = UIColor(red: 246/255, green: 110/255, blue: 101/255, alpha: 1)
        self.tintColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
