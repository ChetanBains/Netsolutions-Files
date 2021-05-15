//
//  JSONTableViewCell.swift
//  JSONReader
//
//  Created by Chetanjeev Singh Bains on 10/03/21.
//

import UIKit

class JSONTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblName : UILabel!
    @IBOutlet weak var lblReceiverID : UILabel!
    @IBOutlet weak var lblEmailAddress : UILabel!
    @IBOutlet weak var lblPhoneNo : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
