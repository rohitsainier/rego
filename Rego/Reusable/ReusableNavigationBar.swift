//
//  MenuHeaderCell.swift
//  Driver
//
//  Created by Rohit Saini on 08/05/20.
//  Copyright © 2020 Accessed Denied. All rights reserved.
//

import UIKit
import SainiUtils

class ReusableNavigationBar: UIView {

    @IBOutlet weak var reusableBackView: UIView!
    let nibName = "ReusableNavigationBar"
    
    @IBOutlet weak var headerFollowView: UIView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerTitleLbl: UILabel!
    @IBOutlet weak var navBartitleLbl: UILabel!
   
    
   
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }

    override func layoutSubviews() {
        headerView.sainiRoundCorners([.bottomRight,.bottomLeft], radius: 10)
        headerFollowView.sainiRoundCorners([.bottomLeft,.bottomRight], radius: 25)
    }
    
}
