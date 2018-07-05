//
//  SlideMenuViewController.swift
//  myapp
//
//  Created by pipinosuke on 2018/07/05.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class SlideViewController: SlideMenuController {
    
    override func awakeFromNib() {
        let mainstoryboard: UIStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let mainVC:  UINavigationController =  mainstoryboard.instantiateInitialViewController() as! UINavigationController
        let leftstoryboard: UIStoryboard = UIStoryboard(name: "Left", bundle: nil)
        let leftVC: LeftViewController = leftstoryboard.instantiateViewController(withIdentifier: "Left") as! LeftViewController
        
        mainViewController = mainVC
        leftViewController = leftVC
        
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


