//
//  DetailViewViewController.swift
//  bakery
//
//  Created by 王富生 on 2017/1/23.
//  Copyright © 2017年 王富生. All rights reserved.
//

import UIKit

class DetailViewViewController: UIViewController {
    var titleName = ""

    
    override func viewDidLoad() {
        
        self.navigationItem.title = titleName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
