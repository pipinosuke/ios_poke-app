//
//  DecodableDataParser.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/10.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import APIKit
class DecodableDataParser: APIKit.DataParser {
    var contentType: String? {
        return "application/json"
    }
    
    func parse(data: Data) throws -> Any {
        return data
    }
}
