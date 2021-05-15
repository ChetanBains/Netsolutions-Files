

import UIKit
import Foundation

protocol MyTableViewCellDelegate : AnyObject {
   func DidPrint(Data: String)
 }


class ControllerTableViewCell: UITableViewCell {
    weak var delegate : MyTableViewCellDelegate?
    var data : Value!


    @IBOutlet var lblInput : UILabel!
    @IBOutlet var btnPrint : UIButton!
    @IBOutlet var btnPlus : UIButton!
    @IBOutlet var btnMinus : UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func DidPressPrint(){
        delegate?.DidPrint(Data: "\(data.number)")
    }
}
