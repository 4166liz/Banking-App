//
//  AccountViewController.swift
//  Bank App
//
//  Created by sunny on 17/11/2017.
//  Copyright © 2017 sunny. All rights reserved.
//

import UIKit
import Firebase

class AccountViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signOutClicked(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            dismiss(animated: true, completion: nil)
        } catch let signOutError as NSError {
            print ("Error signing out: \(signOutError.localizedDescription)")
        }
    }
    
    @IBAction func checkingClicked(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "tableViewController") as! TransactionTableViewController
        vc.nodeName = "checking"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func savingsClicked(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "tableViewController") as! TransactionTableViewController
        vc.nodeName = "savings"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

