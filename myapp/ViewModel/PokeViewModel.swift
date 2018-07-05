//
//  PokeViewModel.swift
//  myapp
//
//  Created by pipinosuke on 2018/07/02.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import APIKit
import BrightFutures

class PokeViewModel {
    var pokemon =  Pokemon()
    func fetchPoke(params: [String: Any]) -> Future<GetPokeRequest.Response, SessionTaskError > {
        return APIManager.send(request: GetPokeRequest(queryParameters: params))
    }
    func fetchAlolaNumber(params: [String: Any]) -> Future<GetAlolaNumRequest.Response, SessionTaskError > {
        return APIManager.send(request: GetAlolaNumRequest(queryParameters: params))
    }
}
