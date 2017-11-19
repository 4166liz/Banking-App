//
//  MainTabViewController.swift
//  Bank App
//
//  Created by sunny on 2017/11/18.
//  Copyright © 2017年 sunny. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let accountsController = storyboard.instantiateViewController(withIdentifier: "AccountNavigationController")
        let accountItem = UITabBarItem(title: "Account", image: nil, tag: 0)
        accountsController.tabBarItem = accountItem
        let depositController = storyboard.instantiateViewController(withIdentifier: "DepositController")
        let depositItem = UITabBarItem(title: "Deposit", image: nil, tag: 1)
        depositController.tabBarItem = depositItem
        self.viewControllers = [accountsController, depositController]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
