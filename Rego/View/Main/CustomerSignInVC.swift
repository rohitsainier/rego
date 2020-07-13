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
    
    @IBOutlet weak var venderSignUpLbl: UILabel!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var facebookBtn: UIButton!
    @IBOutlet weak var googleBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var navBar: ReusableNavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    private func configUI(){
        navBar.navBartitleLbl.text = "Sign in"
        emailTxt.sainiCornerRadius(radius: 15)
        emailTxt.layer.borderWidth = 1
        emailTxt.layer.borderColor = #colorLiteral(red: 0.7490196078, green: 0.7490196078, blue: 0.7490196078, alpha: 1)
        passwordTxt.sainiCornerRadius(radius: 15)
        passwordTxt.layer.borderWidth = 1
        passwordTxt.layer.borderColor = #colorLiteral(red: 0.7490196078, green: 0.7490196078, blue: 0.7490196078, alpha: 1)
        
        signInBtn.sainiCornerRadius(radius: 15)
        signInBtn.layer.borderWidth = 3
        signInBtn.layer.borderColor = #colorLiteral(red: 1, green: 0.6196078431, blue: 0.3294117647, alpha: 1)
        
        signUpBtn.sainiCornerRadius(radius: 15)
        signUpBtn.layer.borderWidth = 3
        signUpBtn.layer.borderColor = #colorLiteral(red: 1, green: 0.6196078431, blue: 0.3294117647, alpha: 1)
        
        googleBtn.sainiCornerRadius(radius: 15)
        googleBtn.layer.borderWidth = 1
        googleBtn.layer.borderColor = #colorLiteral(red: 0.7490196078, green: 0.7490196078, blue: 0.7490196078, alpha: 1)
        
        facebookBtn.sainiCornerRadius(radius: 15)
        facebookBtn.layer.borderWidth = 1
        facebookBtn.layer.borderColor = #colorLiteral(red: 0.7490196078, green: 0.7490196078, blue: 0.7490196078, alpha: 1)
        
        let hereTxt = NSAttributedString{
          "here"
            .foregroundColor(.black)
            .underline(.black, style: .thick)
        }
        let venderTxt = NSAttributedString{
          "Vendors to join Sign in or Sign up "
            .foregroundColor(.black)
        }
        
        let combination = NSMutableAttributedString()
        combination.append(venderTxt)
        combination.append(hereTxt)
        
        venderSignUpLbl.attributedText = combination
    }
    
    @IBAction func clickForgotPasswordBtn(_ sender: UIButton) {
    }
    
}

