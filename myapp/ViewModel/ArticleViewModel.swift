//
//  ArticleViewModel.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/10.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import APIKit
import BrightFutures

class ArticleViewModel {
    var max: Int = 0
    var articles =  [Article]()
    
    func fetchArticles(params: [String: Any]) -> Future<GetArticlesRequest.Response, SessionTaskError> {
        
        return APIManager.send(request: GetArticlesRequest(queryParameters: params))
    }
}
