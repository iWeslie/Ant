//
//  ReportViewController.swift
//  Ant
//
//  Created by Weslie on 2018/7/7.
//  Copyright © 2018 Weslie. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func reportClicked(_ sender: UIButton) {
        let alert = UIAlertController(title: "提示", message: "是否发送反馈？", preferredStyle: .alert)
        let ok = UIAlertAction(title: "确定", style: .default) { (_) in
            let cleanAlert = UIAlertController(title: "提示", message: "已反馈", preferredStyle: .alert)
            let ok = UIAlertAction(title: "好的", style: .default, handler: { (_) in
                self.navigationController?.popViewController(animated: true)
            })
            cleanAlert.addAction(ok)
            self.present(cleanAlert, animated: true, completion: nil)
        }
        let cancel = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
