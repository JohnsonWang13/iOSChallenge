//
//  ViewController.swift
//  Lottie-Demo
//
//  Created by don chen on 2017/2/6.
//  Copyright © 2017年 Don Chen. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var animationView:LAAnimationView?
    var tableView: UITableView = UITableView()
    var some = ["something"]

    override func viewDidLoad() {
        super.viewDidLoad()
        let bounds = UIScreen.main.bounds
        
        tableView = UITableView(frame: CGRect(x: 0, y: bounds.maxY * 0.3 , width: bounds.width, height: bounds.height * 0.7), style: .plain)
        
        tableView.delegate = self
        tableView.dataSource = self

        view.addSubview(tableView)
        setupView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animationViewPlay()
    }
    
    func setupView() {
        let bounds = UIScreen.main.bounds
        
        animationView = LAAnimationView.animationNamed("LottieLogo1")
        animationView?.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height * 0.3)
        animationView?.contentMode = .scaleAspectFill
        
        self.view.addSubview(animationView!)
        self.animationView?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.animationViewPlay)))
        
    }
    
    func animationViewPlay() {
        animationView?.animationProgress = 0
        animationView?.play()
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return some.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "aCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        cell?.selectionStyle = .none
        cell?.textLabel?.text = some[indexPath.row]
        
        return cell!
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = TransitionViewController()
        present(vc, animated: true, completion: nil)
    }
}

