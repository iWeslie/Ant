//
//  SelfProfile.swift
//  Ant
//
//  Created by Weslie on 2017/8/23.
//  Copyright © 2017年 LiuXinQiang. All rights reserved.
//

import UIKit

class SelfProfile: UITableViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var sex: UILabel!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var exitLogin: UIButton!
    @IBAction func exit(_ sender: UIButton) {
        
        print("exit")
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        exitLogin.layer.cornerRadius = 5
        exitLogin.layer.masksToBounds = true

    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
            return 10
        } else {
            return 0.0001
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        

        if section == 1 {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 10))
            view.backgroundColor = UIColor.groupTableViewBackground
            return view
        } else {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 0.0001))
            view.backgroundColor = UIColor.white
            return view
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0001
    }


}
