//
//  LeftViewController.swift
//  myapp
//
//  Created by pipinosuke on 2018/07/05.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class LeftViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "LeftMenuTypeImageTableViewCell", bundle: nil), forCellReuseIdentifier: "LeftMenuTypeImageTableViewCell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.backgroundColor = .black
        tableView.separatorStyle = .none

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

extension LeftViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: LeftMenuTypeImageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LeftMenuTypeImageTableViewCell", for: indexPath) as! LeftMenuTypeImageTableViewCell
        cell.typeImageView.image = UIImage(named: "type" + String(indexPath.row))
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 17
    }
    
}
