

import UIKit



class ViewController: UIViewController{
    
    var initialValue = 0
    var numArray = [Value]()
    
    
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var lblOutput : UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0 ... 100{
                numArray.append(Value(number: initialValue))
            }

        self.lblOutput.text = "\(initialValue)"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as? ControllerTableViewCell else{fatalError("Error in creating cells")}
        
                let valueItem = numArray[indexPath.row]
                cell.delegate = self
                cell.data = valueItem
                cell.lblInput.text = String(valueItem.number)

                cell.btnMinus.tag = indexPath.row
                cell.btnMinus.addTarget(self, action: #selector(didPressMinus(_:)), for: .touchUpInside)

                cell.btnPlus.tag = indexPath.row
                cell.btnPlus.addTarget(self, action: #selector(didPressPlus(_:)), for: .touchUpInside)
        
//                cell.btnPrint.tag = indexPath.row
//                cell.btnPrint.addTarget(self, action: #selector(didPressPlus(_:)), for: .touchUpInside)

                return cell
    }
        @objc private func didPressPlus(_ sender: UIButton) {
            let dataIndex = sender.tag
            if numArray.count < dataIndex { return }

            numArray[dataIndex].number += 1

            tableView.reloadData()
        }

        @objc private func didPressMinus(_ sender: UIButton) {

            
            let dataIndex = sender.tag
            if numArray.count < dataIndex { return }

            let numArrayItem = numArray[dataIndex]

            if (numArrayItem.number >= 0) {
                numArray[dataIndex].number -= 1
            }

            tableView.reloadData()
        }
//        @objc private func didPrint(_ sender: UIButton) {
//        
//    }

}

extension ViewController : MyTableViewCellDelegate {
    func DidPrint(Data: String) {
        self.lblOutput.text = "\(Data)"
        
    }

}



