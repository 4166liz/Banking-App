//
//  TransactionTableViewController.swift
//  Bank App
//
//  Created by sunny on 17/11/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit
import Firebase

class TransactionTableViewController: UITableViewController {
    
    var transactions = [Transaction]()
    
    var nodeName: String!
    
    struct Storyboard {
        static let TransactionCell = "TransactionCell"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchTransactions()
    }
    
    func fetchTransactions() {
        
        Database.database().reference().child(nodeName).observe(.value, with: { (snapshot) in
            
            self.transactions.removeAll()
            for item in snapshot.children {
                let ele: DataSnapshot = item as! DataSnapshot
                if let dictionary = ele.value as? [String: Any] {
                    let transaction = Transaction()
                    
                    transaction.Date = dictionary["date"] as? String
                    transaction.Amount = dictionary["amount"] as? String
                    transaction.Source = dictionary["source"] as? String
                    
                    
                    self.transactions.append(transaction)
                }
            }
            
            self.tableView.reloadData()
        }, withCancel: nil)
    }
    
}

extension TransactionTableViewController
{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.TransactionCell, for: indexPath) as! TransactionCell
        
        cell.transaction = self.transactions[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 113
    }
}

