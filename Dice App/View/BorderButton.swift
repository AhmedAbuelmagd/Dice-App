//
//  BorderButton.swift
//  Dice App
//
//  Created by Ahmed Abuelmagd on 1/23/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth  =  2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
