//
//  SlideMenuViewController.swift
//  myapp
//
//  Created by pipinosuke on 2018/07/05.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class SlideMenuViewController: UIViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension SlideMenuViewController: SlideMenuControllerDelegate {
    override func awakeFromNib() {
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "Home")
        let leftVC = storyboard?.instantiateViewController(withIdentifier: "Left")
        self.slideMenuController()?.mainViewController      = mainVC
        self.slideMenuController()?.leftViewController = leftVC
        super.awakeFromNib()
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


