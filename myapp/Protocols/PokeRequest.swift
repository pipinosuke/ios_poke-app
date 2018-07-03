//
//  PokeRequest.swift
//  myapp
//
//  Created by pipinosuke on 2018/07/02.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import Foundation
import APIKit
protocol PokeRequest: Request {}

extension PokeRequest {
    var baseURL: URL {
        return URL(string: "https://pipinosuke-pokedata.herokuapp.com/api/")!
    }
}
