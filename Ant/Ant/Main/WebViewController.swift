//
//  WebViewController.swift
//  Ant
//
//  Created by Weslie on 2018/7/8.
//  Copyright © 2018 Weslie. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    var urlString: String = ""
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL.init(string: urlString)!
        let myRequest = URLRequest(url: url)
        webView.backgroundColor = UIColor.white
        webView.loadRequest(myRequest)
        
    }


    

}
