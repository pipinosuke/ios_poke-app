//
//  QiitaRequest.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/10.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import Foundation
import APIKit

protocol QiitaRequest: Request { }

extension QiitaRequest {
    var baseURL: URL {
        return URL(string: "https://qiita.com/api/v2")!
    }
}
