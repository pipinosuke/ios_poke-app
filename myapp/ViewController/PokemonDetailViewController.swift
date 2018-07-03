
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
        switch indexPath.section {
        case 0:
            let cell: PokemonBasicDataTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PokemonBasicDataTableViewCell") as! PokemonBasicDataTableViewCell
            guard let pokemon = pokemon else { return cell }
            cell.setPokemon(pokemon: pokemon)
            return cell
        
        case 1:
            let cell: PokemonParamsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PokemonParamsTableViewCell") as! PokemonParamsTableViewCell
            setParamsForRow(rowNumber: indexPath.row, cell: cell)
            return cell
        
        case 2:
            let cell:PokemonSpeedTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PokemonSpeedTableViewCell") as! PokemonSpeedTableViewCell
            return cell
        default:
            return tableView.dequeueReusableCell(withIdentifier: "PokemonSpeedTableViewCell") as! PokemonSpeedTableViewCell
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    
    }
    
    
    private func setParamsForRow(rowNumber: Int, cell: PokemonParamsTableViewCell)  {
        guard let pokemon = pokemon else { return }
        switch rowNumber  {
        case 0:
            cell.setValue(params: pokemon.hp)
            cell.paramLabel.text = "HP"
        case 1:
            cell.setValue(params: pokemon.attack)
            cell.paramLabel.text = "攻撃"
        case 2:
            cell.setValue(params: pokemon.defense)
            cell.paramLabel.text = "防御"
        case 3:
            cell.setValue(params: pokemon.special_attack)
            cell.paramLabel.text = "特攻"
        case 4:
            cell.setValue(params: pokemon.special_defense)
            cell.paramLabel.text = "特御"
        case 5:
            cell.setValue(params: pokemon.speed)
            cell.paramLabel.text = "素早さ"
        default:
            cell.paramLabel.text = ""
        }
    }

}
