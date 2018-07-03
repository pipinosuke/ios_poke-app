//
//  Pokemon.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/30.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import Foundation

struct Pokemon: Codable {
    var id: Int = 0
    var name: String = ""
    var image: String = ""
    var type1: String = ""
    var type2: String = ""
    var hp: Int = 0
    var attack: Int = 0
    var defense: Int = 0
    var special_attack: Int = 0
    var special_defense: Int = 0
    var speed: Int = 0
//    let highest_speed: Int
//    let semi_highest_speed: Int
//    let lowest_speed: Int
//    let semi_lowest_speed: Int
    
}
