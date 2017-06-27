//
//  TableViewController.swift
//  bakery
//
//  Created by 王富生 on 2017/1/23.
//  Copyright © 2017年 王富生. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var nameList = ["牛角麵包", "香蒜麵包", "菠蘿麵包", "墨西哥薄餅", "甜甜圈", "義大利麵包", "法國麵包", "玉米麵包"]

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }
    

      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }

      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = self.myTableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        
        cell.textLabel?.textColor = UIColor(red: 207/255, green: 155/255, blue: 97/255, alpha: 1)
        
        cell.textLabel?.text = self.nameList[indexPath.row]
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.selectionStyle = .none
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let foodName = nameList[indexPath.row]
        performSegue(withIdentifier: "bread", sender: foodName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailTitle = segue.destination as! DetailViewViewController
        detailTitle.titleName = sender as! String
    }
}
