//
//  APIManager.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/10.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import Foundation
import APIKit
import BrightFutures

struct APIManager {
    
    static func send<T: QiitaRequest>(request: T, callbackQueue queue: CallbackQueue? = nil) -> Future<T.Response, SessionTaskError> {
        
        let promise = Promise<T.Response, SessionTaskError>()
        
        Session.send(request, callbackQueue: queue) { result in
            
            switch result {
            case let .success(data):
                promise.success(data)
                
            case let .failure(error):
                promise.failure(error)
            }
        }
        
        return promise.future
    }
    
}
