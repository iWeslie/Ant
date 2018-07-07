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
        
        //清除用户登录信息
        let manager = FileManager.default
        let srcUrl = NSHomeDirectory() + "/Documents/userInfo.plist"
        try! manager.removeItem(atPath: srcUrl)
        isLogin = false
        
        NotificationCenter.default.post(name: isLoginNotification, object: nil)
        
        self.navigationController?.popViewController(animated: true)
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 && indexPath.row == 2 {
            let alert = UIAlertController(title: "请选择性别", message: nil, preferredStyle: .actionSheet)
            let male = UIAlertAction(title: "男", style: .default) { (_) in
                self.sex.text = "男"
            }
            let female = UIAlertAction(title: "女", style: .default) { (_) in
                self.sex.text = "女"
            }
            alert.addAction(male)
            alert.addAction(female)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nickname" {
            let dest = segue.destination as! SelfDetialViewController
            dest.info = self.nickName.text!
            
            dest.changeClosure = { (text) in
                self.nickName.text = text
            }
        } else if segue.identifier == "phone" {
            let dest = segue.destination as! SelfDetialViewController
            dest.info = self.phoneNumber.text!
            dest.changeClosure = { (test) in
                self.phoneNumber.text = test
            }
            
        } else {
            
        }
        
    }
    


}
