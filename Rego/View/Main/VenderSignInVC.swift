//
//  VenderSignInVC.swift
//  Rego
//
//  Created by Rohit Saini on 13/07/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import UIKit

class VenderSignInVC: UIViewController {
    
       @IBOutlet weak var signInBtn: UIButton!
       @IBOutlet weak var passwordTxt: UITextField!
       @IBOutlet weak var emailTxt: UITextField!
       @IBOutlet weak var signUpBackView:UIView!
    
       @IBOutlet weak var navBar: ReusableNavigationBar!

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
           navBar.navBartitleLbl.text = "Vendor Sign in"
           emailTxt.sainiCornerRadius(radius: 15)
          
           emailTxt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
           passwordTxt.sainiCornerRadius(radius: 15)
          
           passwordTxt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
           
           signInBtn.sainiCornerRadius(radius: 15)
           signInBtn.layer.borderWidth = 3
           signInBtn.layer.borderColor = #colorLiteral(red: 1, green: 0.6196078431, blue: 0.3294117647, alpha: 1)
           signInBtn.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
           signUpBackView.sainiCornerRadius(radius: 15)
           signUpBackView.sainiAddTapGesture {
            let vc: VendorSignUpVC = STORYBOARD.MAIN.instantiateViewController(withIdentifier: "VendorSignUpVC") as!  VendorSignUpVC
            self.navigationController?.pushViewController(vc, animated: true)
        }

       }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
