//
//  String+toInt.swift
//  medium
//
//  Created by lizhenning on 2020/3/10.
//  Copyright © 2020 lizhenning. All rights reserved.
//

import Foundation

/*
 print("10".toInt())
 // 10
 print("15".toIntOrNull())
 // Optional(15)
 print("5.5".toInt())
 // CRASH!
 print("5a".toInt())
 // CRASH!

 */

public extension String {
    func toInt() -> Int {
        Int(self)!
    }
    
    func toIntOrNull() -> Int? {
        Int(self)
    }
}
