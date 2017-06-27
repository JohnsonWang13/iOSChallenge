//
//  TransitionAnimate.swift
//  Lottie-Demo
//
//  Created by 王富生 on 2017/2/6.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import UIKit
import Lottie

class TransitionAnimate: NSObject, UIViewControllerTransitioningDelegate {

    open func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animationController = LAAnimationTransitionController(animationNamed: "vcTransition1", fromLayerNamed: "outLayer", toLayerNamed: "inLayer")
        return animationController
    }
    
    open func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        let animationController = LAAnimationTransitionController(animationNamed: "vcTransition2", fromLayerNamed: "outLayer", toLayerNamed: "inLayer")
        return animationController
    }
}
