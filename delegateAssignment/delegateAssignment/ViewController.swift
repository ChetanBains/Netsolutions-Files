

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblName : UILabel!
    @IBOutlet weak var lblAge : UILabel!
    @IBOutlet weak var lblEmail : UILabel!
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapEnterVC(){
//        performSegue(withIdentifier: "DataViewController", sender: self)
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let insertVC = segue.destination as? InsertDataViewController{
            insertVC.delegate = self
        }
        
        //let vc = storyboard?.instantiateViewController(identifier: <#T##String#>)
    }
}

extension ViewController : UserDataDelegate {
func sendData(name: String, age: String, email: String) {
    lblName.text = name
    lblAge.text = age
    lblEmail.text = email
}
}




