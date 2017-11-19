//
//  Account.swift
//  Bank App
//
//  Created by sunny on 17/11/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class Account: NSObject {
    var id: String?
    var UserID: String?
    var AccountType: String?
    var AccountAmount: String?
    
    
    
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        print("Account undefineKey:\(key)");
    }
    
    
    
}
