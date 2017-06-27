//
//  ViewController.swift
//  IOSChallenge3
//
//  Created by 王富生 on 2017/2/14.
//  Copyright © 2017年 王富生. All rights reserved.
//

import UIKit

class MainVC: UIViewController, searchRange {
    
    let priceFilter = PriceFilter()
    var filterIsNotPopout: Bool = true
    
    internal var selectedIndex: [Int] = [] {
        didSet {
            stores = priceFilter.filter(selectedIndex: selectedIndex)
        }
    }
    
    var stores: [Commodity] = [] {
        didSet {
            self.stoneTableView.reloadData()
        }
    }
    
    @IBOutlet var filterView: UIView!
    
    @IBOutlet weak var stoneTableView: UITableView!
    @IBOutlet weak var filterBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        stoneTableView.dataSource = self
        stoneTableView.delegate = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        stores = priceFilter.filter(selectedIndex: selectedIndex)
    }
    
    @IBAction func filterPopout(_ sender: Any) {
        
        let popoutVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FilterID") as! FilterVC
        
        if filterIsNotPopout {
            
            filterIsNotPopout = false
            
            popoutVC.modalTransitionStyle = .crossDissolve
            popoutVC.modalPresentationStyle = .fullScreen
            
            popoutVC.selectedIndex = selectedIndex
            
            popoutVC.delegate = self
            
            self.addChildViewController(popoutVC)
            popoutVC.view.frame = self.view.frame
            self.view.addSubview(popoutVC.view)
            popoutVC.didMove(toParentViewController: self)
//            present(popoutVC, animated: false, completion: nil)
        }
    }
}

extension MainVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.commodity.text = stores[indexPath.row].name
        cell.price.text = String(stores[indexPath.row].price)
        
        cell.selectionStyle = .none
        
        return cell
    }
}

extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
