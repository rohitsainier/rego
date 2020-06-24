//
//  OnboardingCell.swift
//  Rego
//
//  Created by Rohit Saini on 24/06/20.
//  Copyright © 2020 Rohit Saini. All rights reserved.
//

import UIKit

class OnboardingCell: UICollectionViewCell {

    //OUTLETS
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var skipBtn: UIButton!
    @IBOutlet weak var gifImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func playGif(gifName:String){
        gifImage.image = nil
        gifImage.image = UIImage.gifImageWithName(gifName)
    }

    @IBAction func clickSkipBtn(_ sender: UIButton) {
    }
    
    @IBAction func clickNextBtn(_ sender: UIButton) {
    }
}
