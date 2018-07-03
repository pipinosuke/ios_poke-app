//
//  GetPokeRequest.swift
//  myapp
//
//  Created by pipinosuke on 2018/07/02.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import Foundation
import APIKit

struct GetPokeRequest: PokeRequest {
    typealias Response = Pokemon
    let queryParameters: [String : Any]?
    var method: HTTPMethod { return .get }
    var path: String { return "/pokemons" }
    var dataParser: DataParser {
        return DecodableDataParser()
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Pokemon {
        guard let pokeData: Data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        let pokemon = try JSONDecoder().decode(Pokemon.self, from: pokeData)
        return pokemon
    }
}
