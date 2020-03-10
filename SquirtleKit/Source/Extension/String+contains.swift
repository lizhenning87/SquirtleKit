//
//  String+contains.swift
//  medium
//
//  Created by lizhenning on 2020/3/10.
//  Copyright © 2020 lizhenning. All rights reserved.
//

import Foundation

public extension String {
    
    /*
      判断
     let a1 = "12345".containsOnlyDigits // true
     let a2 = "a12345".containsOnlyDigits // false
     let b1 = "abcde".containsOnlyLetters // true
     let b2 = "abcde1".containsOnlyLetters // false
     let c1 = "abcde12345".isAlphanumeric // true
     let c2 = "abcde.12345".isAlphanumeric // false
      */
     
     var containsOnlyDigits: Bool {
         let notDigits = NSCharacterSet.decimalDigits.inverted
         return rangeOfCharacter(from: notDigits, options: String.CompareOptions.literal, range: nil) == nil
     }
     
     var containsOnlyLetters: Bool {
         let notLetters = NSCharacterSet.letters.inverted
         return rangeOfCharacter(from: notLetters, options: String.CompareOptions.literal, range: nil) == nil
     }
     
     var isAlphanumeric: Bool {
         let notAlphanumeric = NSCharacterSet.decimalDigits.union(NSCharacterSet.letters).inverted
         return rangeOfCharacter(from: notAlphanumeric, options: String.CompareOptions.literal, range: nil) == nil
     }
    
}
