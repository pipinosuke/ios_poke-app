//
//  GetArticleRequest.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/10.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import Foundation
import APIKit

struct GetArticlesRequest: QiitaRequest {
    typealias Response =  (max: Int, articles: [Article])
    
    let queryParameters: [String : Any]?
    var method: HTTPMethod { return .get }
    var path: String { return "/items" }
    var dataParser: DataParser {
        return DecodableDataParser()
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> (max: Int, articles: [Article]) {
        
        guard let articlesData: Data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        let articles = try JSONDecoder().decode([Article].self, from: articlesData)
        let max = 0
        print(articles)
        return (max, articles)
    }
}
