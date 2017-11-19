//
//  TransactionCell.swift
//  Bank App
//
//  Created by sunny on 17/11/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit


class TransactionCell: UITableViewCell {
    
    
    @IBOutlet weak var TransDate: UILabel!
    
    @IBOutlet weak var TransSource: UILabel!
    
    @IBOutlet weak var TransAmount: UILabel!
    
    var transaction: Transaction! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        TransSource.text = transaction.Source
        TransAmount.text = transaction.Amount
        TransDate.text = transaction.Date
    }
}

