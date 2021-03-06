//
//  TabViewController.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/09.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.tabBar.backgroundColor = .black
        tabBar.barTintColor = .black

        // Do any additional setup after loading the view.
        let names = ["Slide", "Sub"]
        
        var viewControllers = [UIViewController]()
        for name in names {
            let storyboard = UIStoryboard(name: name, bundle: nil)
            if let viewController = storyboard.instantiateInitialViewController() {
                viewControllers.append(viewController)
            }
        }
        setViewControllers(viewControllers, animated: false)
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
