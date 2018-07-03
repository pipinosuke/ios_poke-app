//
//  ViewController.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/09.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var urlStr: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: urlStr!) else { return }
        let request = URLRequest(url: url)
        webView.load(request)
        print(webView.title)
        

        // Do any additional setup after loading the view.
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
