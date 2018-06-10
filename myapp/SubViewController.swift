//
//  SubViewController.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/09.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit
import APIKit
import BrightFutures

class SubViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = ArticleViewModel()
    
    var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "SubTableViewCell", bundle: nil), forCellReuseIdentifier: "SubTableViewCell")
        
        load()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func load() {
        let params = [
            "page": 1,
            ]
        viewModel.fetchArticles(params: params)
            .onSuccess { [weak self] data in
                self?.articles = data.articles
                self?.tableView.reloadData()
            }
            .onFailure { [weak self] error in
                //self?.showErrorAlert(error.localizedDescription, completion: nil)
        }
                
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



//MARK----------

extension SubViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Web", bundle: nil)
        let vc: UIViewController = storyboard.instantiateInitialViewController()!
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension SubViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubTableViewCell", for: indexPath) as! SubTableViewCell
        cell.titleLabel.text = articles[indexPath.row].title
        return cell
    }

}
