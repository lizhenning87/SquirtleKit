//
//  String+json.swift
//  medium
//
//  Created by lizhenning on 2020/3/10.
//  Copyright © 2020 lizhenning. All rights reserved.
//

import Foundation

public extension String {
    
    init?(json: Any) {
        guard let data = Data(json: json) else { return nil }
        self.init(decoding: data, as: UTF8.self)
    }
    
    func jsonToDictionary() -> [String: Any]? {
        self.data(using: .utf8)?.jsonToDictionary()
    }
    
    func jsonToArray() -> [Any]? {
        self.data(using: .utf8)?.jsonToArray()
    }
    
}
