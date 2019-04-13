//
//  MyTableViewCell.swift
//  TableViewWithArray
//
//  Created by Akash Padhiyar on 09/04/19.
//  Copyright © 2019 Akash Padhiyar. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var MyImageView: UIImageView!
    @IBOutlet weak var MyLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.abc()
       
        // Initialization code
    }
    func abc(){
        MyLabel.layer.cornerRadius = 18.0
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // MyLabel.layer.cornerRadius = 18

        // Configure the view for the selected state
    }

}
