//
//  CustomerSignUpVC.swift
//  Rego
//
//  Created by Rohit Saini on 13/07/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import UIKit

class CustomerSignUpVC: UIViewController {

    
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var ageGroupTxt: UITextField!
    @IBOutlet weak var surnameTxt: UITextField!
    @IBOutlet weak var confirmPasswordTxt: UITextField!
    @IBOutlet weak var navBar: ReusableNavigationBar!
    
    @IBOutlet weak var firstnameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        
        // Do any additional setup after loading the view.
    }
    
    private func configUI(){
        self.view.sainiAddSwipe { (disha) in
            if disha == .right{
                self.navigationController?.popViewController(animated: true)
            }
        }
        navBar.navBartitleLbl.text = "Sign up"
        
        emailTxt.sainiCornerRadius(radius: 15)
        
        emailTxt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        passwordTxt.sainiCornerRadius(radius: 15)
       
        passwordTxt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        confirmPasswordTxt.sainiCornerRadius(radius: 15)
        
        confirmPasswordTxt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        firstnameTxt.sainiCornerRadius(radius: 15)
        
        firstnameTxt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        surnameTxt.sainiCornerRadius(radius: 15)
       
        surnameTxt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        ageGroupTxt.sainiCornerRadius(radius: 15)
        
        ageGroupTxt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        signUpBtn.sainiCornerRadius(radius: 15)
        signUpBtn.layer.borderWidth = 3
        signUpBtn.layer.borderColor = #colorLiteral(red: 1, green: 0.6196078431, blue: 0.3294117647, alpha: 1)
        
        ageGroupTxt.sainiSetRightIcon(UIImage())
        
    }
    


}
