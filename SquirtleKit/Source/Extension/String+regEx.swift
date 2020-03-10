//
//  String+Custom.swift
//  medium
//
//  Created by lizhenning on 2020/3/9.
//  Copyright © 2020 lizhenning. All rights reserved.
//

import Foundation

public extension String {
    
    /*
     是否为email
     */
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    
}
