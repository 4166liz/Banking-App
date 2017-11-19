//
//  AccountCell.swift
//  Bank App
//
//  Created by sunny on 17/11/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit

class AccountCell: UITableViewCell {
    
    @IBOutlet weak var AccountType: UILabel!
    
    @IBOutlet weak var AccountAmount: UILabel!
    
    var account: Account! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        AccountType.text = account.AccountType
        AccountAmount.text = account.AccountAmount
        
    }
    
    
}
