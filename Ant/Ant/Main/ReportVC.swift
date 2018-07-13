//
//  ReportVC.swift
//  Neighbourhoods
//
//  Created by LiuXinQiang on 2017/12/6.
//  Copyright © 2017年 NJQL. All rights reserved.
//

import UIKit

class ReportVC: UIViewController {
    @IBOutlet weak var reportContext: UITextView!
    private var selectedNum = 0
    @IBOutlet weak var submit: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func shanBtn(_ sender: Any) {
        let shanBtn = sender as? UIButton
        if  shanBtn?.isSelected == false{
            shanBtn?.isSelected = true
            shanBtn?.backgroundColor = #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1)
            shanBtn?.setTitleShadowColor( #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1), for: .selected)
            selectedNum += 1
        }else{
            shanBtn?.isSelected = false
            shanBtn?.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            shanBtn?.setTitleShadowColor(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1) , for: .normal)
             selectedNum -= 1
        }
    }
    @IBAction func vulgarBtn(_ sender: Any) {
        let shanBtn = sender as? UIButton
        if  shanBtn?.isSelected == false{
            shanBtn?.isSelected = true
            shanBtn?.backgroundColor = #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1)
            shanBtn?.setTitleShadowColor( #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1), for: .selected)
            selectedNum += 1
        }else{
            shanBtn?.isSelected = false
            shanBtn?.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            shanBtn?.setTitleShadowColor(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1) , for: .normal)
            selectedNum -= 1
        }
    }
    @IBAction func discriminateBtn(_ sender: Any) {
        let shanBtn = sender as? UIButton
        if  shanBtn?.isSelected == false{
            shanBtn?.isSelected = true
            shanBtn?.backgroundColor = #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1)
            shanBtn?.setTitleShadowColor( #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1), for: .selected)
            selectedNum += 1
        }else{
            shanBtn?.isSelected = false
            shanBtn?.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            shanBtn?.setTitleShadowColor(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1) , for: .normal)
            selectedNum -= 1
        }
    }
    @IBAction func uncomforableBtn(_ sender: Any) {
        let shanBtn = sender as? UIButton
        if  shanBtn?.isSelected == false{
            shanBtn?.isSelected = true
            shanBtn?.backgroundColor = #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1)
            shanBtn?.setTitleShadowColor( #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1), for: .selected)
            selectedNum += 1
        }else{
            shanBtn?.isSelected = false
            shanBtn?.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            shanBtn?.setTitleShadowColor(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1) , for: .normal)
            selectedNum -= 1
        }
    }
    @IBAction func ruleBreakerBtn(_ sender: Any) {
        let shanBtn = sender as? UIButton
        if  shanBtn?.isSelected == false{
            shanBtn?.isSelected = true
            shanBtn?.backgroundColor = #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1)
            shanBtn?.setTitleShadowColor( #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1), for: .selected)
            selectedNum += 1
        }else{
            shanBtn?.isSelected = false
            shanBtn?.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            shanBtn?.setTitleShadowColor(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1) , for: .normal)
            selectedNum -= 1
        }
    }
    @IBAction func otherBtn(_ sender: Any) {
        let shanBtn = sender as? UIButton
        if  shanBtn?.isSelected == false{
            shanBtn?.isSelected = true
            shanBtn?.backgroundColor = #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1)
            shanBtn?.setTitleShadowColor( #colorLiteral(red: 0.9921568632, green: 0.5803921819, blue: 0.1490196139, alpha: 1), for: .selected)
            selectedNum += 1
        }else{
            shanBtn?.isSelected = false
            shanBtn?.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
            shanBtn?.setTitleShadowColor(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1) , for: .normal)
            selectedNum -= 1
        }
    }
    
    @IBAction func submitAction(_ sender: Any) {
        guard self.selectedNum > 0  else {
            self.presentHintMessage(hintMessgae: "至少选择一种类型", completion: nil)
            return
        }
        self.presentHintMessage(hintMessgae: "提交成功") { (action) in
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.reportContext.resignFirstResponder()
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

extension UIViewController {
    
    // MARK:- set round rect of a UIView
    func setRoundRect(targets: [UIView]) {
        for target in targets {
            target.layer.cornerRadius = target.frame.height / 2
            target.layer.masksToBounds = true
        }
    }
    
    // MARK:- set nav bar title
    func setNavBarTitle(title navTitle: String) {
        let titleLbl = UILabel()
        titleLbl.text = navTitle
        titleLbl.font = UIFont.systemFont(ofSize: 20)
        titleLbl.textColor = #colorLiteral(red: 0.3019607961, green: 0.6941176653, blue: 0.980392158, alpha: 1)
        self.navigationItem.titleView = titleLbl
    }
    
    // MARK:- convenience alert with hint message and completion
    func presentHintMessage(hintMessgae: String, completion: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: "提示", message: hintMessgae, preferredStyle: .alert)
        let ok = UIAlertAction(title: "好的", style: .default, handler: completion)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK:- confirmation alert
    func presentConfirmationAlert(hint hintMessgae: String, completion: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: "提示", message: hintMessgae, preferredStyle: .alert)
        let ok = UIAlertAction(title: "确定", style: .default, handler: completion)
        let cancel = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
    
    func setNavBarBackBtn() {
        let back = UIBarButtonItem(image: #imageLiteral(resourceName: "back"), style: .done, target: self, action: #selector(popopop))
        self.navigationItem.setLeftBarButton(back, animated: true)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    @objc func popopop() {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

