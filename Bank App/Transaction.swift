//
//  Transaction.swift
//  Bank App
//
//  Created by sunny on 17/11/2017.
//  Copyright © 2017 sunny. All rights reserved.
//


import UIKit
class Transaction: NSObject {
    
    var id: String?
    var UserID: String?
    var Date: String?
    var Amount: String?
    var Source: String?
    
    
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print("Transaction undefineKey:\(key)");
    }
}
