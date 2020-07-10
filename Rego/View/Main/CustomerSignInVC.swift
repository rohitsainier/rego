//
//  CustomerSignInVC.swift
//  Rego
//
//  Created by Rohit Saini on 24/06/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import UIKit
import SainiUtils

class CustomerSignInVC: UIViewController {

    @IBOutlet weak var navBar: ReusableNavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    private func configUI(){
        navBar.navBartitleLbl.text = "Sign in"
    }
}


