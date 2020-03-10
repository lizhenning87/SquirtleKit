//
//  String+md5.swift
//  medium
//
//  Created by lizhenning on 2020/3/10.
//  Copyright © 2020 lizhenning. All rights reserved.
//

import Foundation
import CommonCrypto


public extension String {

    /*
     MD5
     "123456".md5 ?? ""
     */
    
    var md5: String? {
        let length = Int(CC_MD5_DIGEST_LENGTH)
        guard let data = self.data(using: String.Encoding.utf8) else { return  nil }
        
        let hash = data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) -> [UInt8] in
            var hash: [UInt8] = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
            
            CC_MD5(bytes.baseAddress, CC_LONG(data.count), &hash)
            
            return hash
        }
        
        return (0..<length).map { String(format: "%02x", hash[$0]) }.joined()
    }
    

}
