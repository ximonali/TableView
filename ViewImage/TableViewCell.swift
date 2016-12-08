//
//  TableViewCell.swift
//  
//
//  Created by macadmin on 2016-03-14.
//
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgDetallada: UIImageView!
    @IBOutlet weak var lblDetalle: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
