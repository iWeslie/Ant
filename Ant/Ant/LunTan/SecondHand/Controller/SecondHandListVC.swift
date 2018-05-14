//
//  SecondHandListVC.swift
//  Ant
//
//  Created by Weslie on 2017/8/21.
//  Copyright © 2017年 LiuXinQiang. All rights reserved.
//

import UIKit

class SecondHandListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var issue: UIBarButtonItem!
    
    @IBOutlet weak var tableView: UITableView!

    var modelView = [LunTanDetialModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    var categoryName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        issue.target = self
        issue.action = #selector(pushIssueVC)
    
        
        NetWorkTool.shareInstance.infoList(cate_1: "market", cate_2: "product_cate", cate_3: categoryName, p: 1) { (result, error) in
            if error != nil {
                print(error ?? "load house info list failed")
                return
            }
            guard let resultDict = result!["result"] else {
                return
            }
            
            guard let resultList  = resultDict["list"]   as? NSArray else {
                return
            }
            
            for i in 0..<resultList.count {
                let dict = resultList[i]
                let basic = LunTanDetialModel(dict: dict as! [String : AnyObject])
                self.modelView.append(basic)
            }
            
        }
        
    }
    
    func pushIssueVC() {
        let giveVC = GiveOutVC()
        giveVC.listTableView = HouseRentTabView.init(frame: CGRect.init(x: 0, y: 0, width: screenWidth, height: screenHeight), style: .grouped)
        self.navigationController?.pushViewController(giveVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelView.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LunTanListWithLocationCell") as! LunTanListWithLocationCell
        cell.viewModel = modelView[indexPath.row]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        let model = self.modelView[indexPath.row]
//        let vc = RentOutDVC()
//        
//        vc.modelInfo = model
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
