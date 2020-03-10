//
//  String+insert.swift
//  medium
//
//  Created by lizhenning on 2020/3/10.
//  Copyright © 2020 lizhenning. All rights reserved.
//

import Foundation

/*
 var cardNumber = "1234567890123456"
 cardNumber.insert(separator: " ", every: 4)
 print(cardNumber)
 // 1234 5678 9012 3456
 let pin = "7690"
 let pinWithDashes = pin.inserting(separator: "-", every: 1)
 print(pinWithDashes)
 // 7-6-9-0
 */

public extension String {
    mutating func insert(separator: String, every n: Int) {
        self = inserting(separator: separator, every: n)
    }
    
    func inserting(separator: String, every n: Int) -> String {
        var result: String = ""
        let characters = Array(self)
        stride(from: 0, to: count, by: n).forEach {
            result += String(characters[$0..<min($0+n, count)])
            if $0+n < count {
                result += separator
            }
        }
        return result
    }
}
