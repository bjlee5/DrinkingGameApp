//
//  MainMenuCell.swift
//  DrinkingGameApp
//
//  Created by MacBook Air on 11/16/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class MainMenuCell: UITableViewCell {

    @IBOutlet weak var catLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func updateUI(openers: Openers) {
        catLabel.text = openers.categoryMain
        }
    
}
