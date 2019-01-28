//
//  CustomTableViewHeaderCell.swift
//  ios_tableview_with_section_header
//
//  Created by codexpedia on 1/27/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class CustomTableViewHeaderCell: UITableViewCell {
    
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
