//
//  Onboarding3.swift
//  forthgreen
//
//  Created by MACBOOK on 07/05/20.
//  Copyright © 2020 SukhmaniKaur. All rights reserved.
//

import UIKit

class Onboarding3: UIViewController {


 @IBOutlet weak var gifImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ConfigUI()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - ConfigUI
    private func ConfigUI() {
        gifImage.image = nil
        gifImage.image = UIImage.gifImageWithName("onboarding3")
    }
    
    @IBAction func clickNextBtn(_ sender: UIButton) {
    }
    
    
    @IBAction func clickSkipBtn(_ sender: UIButton) {
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
