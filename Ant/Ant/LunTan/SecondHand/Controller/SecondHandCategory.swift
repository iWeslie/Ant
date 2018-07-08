//
//  SecondHandCategory.swift
//  Ant
//
//  Created by Weslie on 2017/8/21.
//  Copyright © 2017年 LiuXinQiang. All rights reserved.
//

import UIKit

class SecondHandCategory: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
   
}
