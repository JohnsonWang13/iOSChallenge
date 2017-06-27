//
//  FilterVC.swift
//  IOSChallenge3
//
//  Created by 王富生 on 2017/2/14.
//  Copyright © 2017年 王富生. All rights reserved.
//

import UIKit

protocol searchRange {
    var selectedIndex: [Int] { get set }
    var filterIsNotPopout: Bool { get set }
}

class FilterVC: UIViewController {
    
    var selectedIndex: [Int] = []
    
    let priceArray = ["0 ~ 50", "50 ~ 100", "100 ~ 150", "150 ~ 200"]
    
    var delegate: searchRange?
    
    @IBOutlet weak var priceTableView: UITableView!
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceTableView.dataSource = self
        priceTableView.delegate = self
    }
    
    @IBAction func done(_ sender: UIButton) {
        
        if let selectedItems = priceTableView.indexPathsForSelectedRows {
            selectedIndex = []
            for indexPath in selectedItems {
                selectedIndex.append(indexPath.row)
            }
        } else {
            selectedIndex = []
        }
        
        delegate?.selectedIndex = selectedIndex
        
        dismissFilter()
    }
    
    @IBAction func tapToQuit(_ sender: UITapGestureRecognizer) {
        dismissFilter()
    }
    
    func dismissFilter() {
        delegate?.filterIsNotPopout = true
        self.view.removeFromSuperview()
    }
}

extension FilterVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return priceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.setSelected(true, animated: false)
        
        cell.textLabel?.text = priceArray[indexPath.row]
        cell.selectionStyle = .none
        
        if selectedIndex.contains(indexPath.row) {
            priceTableView.selectRow(at: indexPath, animated: true, scrollPosition: .top)
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
}


extension FilterVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = self.priceTableView?.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        let cell = self.priceTableView?.cellForRow(at: indexPath)
        cell?.accessoryType = .none
    }
}
