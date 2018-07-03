
//
//  PokemonViewController.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/30.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    var viewModel = PokeViewModel()
    var pokemon: Pokemon?

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "PokemonParamsTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonParamsTableViewCell")
        tableView.register(UINib(nibName: "PokemonBasicDataTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonBasicDataTableViewCell")
        tableView.register(UINib(nibName: "PokemonSpeedTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonSpeedTableViewCell")
        // Do any additional setup after loading the view.
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = .none
        tableView.backgroundColor = .black
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



extension PokemonDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell: PokemonBasicDataTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PokemonBasicDataTableViewCell") as! PokemonBasicDataTableViewCell
            guard let pokemon = pokemon else {return cell}
            cell.setPokemon(pokemon: pokemon)
            return cell
        } else if indexPath.section == 1 {
            let cell: PokemonParamsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PokemonParamsTableViewCell") as! PokemonParamsTableViewCell
            cell.paramLabel.text = getParamStr(rowNumber: indexPath.row)
            guard let pokemon = self.pokemon else {
                return cell
            }
                switch indexPath.row {
                case 0:
                    cell.setValue(params: pokemon.hp)
                    
                case 1:
                    cell.setValue(params: pokemon.attack)
                case 2:
                    cell.setValue(params: pokemon.defense)
                case 3:
                    cell.setValue(params: pokemon.special_attack)
                case 4:
                    cell.setValue(params: pokemon.special_defense)
                case 5:
                    cell.setValue(params: pokemon.speed)
                    
                default:
                    return cell
                    
            }
            return cell
            
        } else {
            let cell:PokemonSpeedTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PokemonSpeedTableViewCell") as! PokemonSpeedTableViewCell
            return cell
        }
        
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 6
        case 2:
            return 1
        default:
            return 1
        }
    }

    private func getParamStr(rowNumber: Int) -> String {
        switch rowNumber  {
        case 0:
            return "HP"
        case 1:
            return "攻撃"
        case 2:
            return "防御"
        case 3:
            return "特攻"
        case 4:
            return "特御"
        case 5:
            return "素早さ"
        default:
            return ""
        }
    }

}
