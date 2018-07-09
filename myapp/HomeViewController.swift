//
//  ViewController.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/09.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit
import APIKit
import BrightFutures
import SlideMenuControllerSwift


class HomeViewController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    var viewModel = PokeViewModel()
    var pokemons :[Pokemon]?
    
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.register(UINib(nibName: "PokemonCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PokemonCollectionViewCell")
        collectionView.backgroundColor = .black
        
        indicatorView.activityIndicatorViewStyle = .whiteLarge
        indicatorView.hidesWhenStopped = true
        
        addLeftBarButtonWithImage(UIImage(named: "search_icon")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tappedToggleControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            let params = [
                "type": "alola"
            ]
            viewModel.fetchAlolaNumber(params: params)
                .onSuccess { [weak self] data in
                    self?.pokemons = data
                    self?.collectionView.reloadData()
            }
                .onFailure { [weak self] error in
                   //viewModel.showErrorAlert(error.localizedDescription, completion: nil)
            }
        }
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.addSubview(indicatorView)
        indicatorView.startAnimating()
        let storyboard: UIStoryboard = UIStoryboard(name: "PokemonDetail", bundle: nil)
        let vc: PokemonDetailViewController = storyboard.instantiateInitialViewController() as! PokemonDetailViewController
        
        viewModel.fetchPoke(params: setParams(indexPath: indexPath))
                .onSuccess { [weak self] data in
                    vc.pokemon = data
                    self?.navigationController?.pushViewController(vc, animated: true)
                }
                .onFailure { [weak self] error in
                    //showErrorAlert(error.localizedDescription, completion: nil)
            }
        indicatorView.stopAnimating()
    }
    
    private func setParams(indexPath: IndexPath) -> [String: Any] {
        //綺麗にしたい
        if segmentControl.selectedSegmentIndex == 0 {
            return [ "id": indexPath.item + 1]
        } else {
            guard let pokemons = pokemons else { return ["":""] }
                return [ "id": pokemons[indexPath.item].id ]
            
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if segmentControl.selectedSegmentIndex == 0{
            return 804
        } else {
            return pokemons?.count ?? 0
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: PokemonCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCollectionViewCell", for: indexPath) as! PokemonCollectionViewCell
        
        if segmentControl.selectedSegmentIndex == 0 {
            cell.bindData(number: indexPath.item + 1)
        } else {
            guard let pokemons = pokemons else { return cell }
            cell.bindData(number: pokemons[indexPath.item].id)
        }
        
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = collectionView.layer.bounds.width
        let cellWidth = screenWidth / 5
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let margin = CGFloat(4.0)
        return UIEdgeInsets(top: margin, left: 0, bottom: margin, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
