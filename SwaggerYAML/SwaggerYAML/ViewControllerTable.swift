
import UIKit

class ViewControllerTable: UIViewController,UITableViewDataSource{

    let objViewController = ViewController()
    
    @IBOutlet var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return objViewController.arrayDataPostsGet.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
                let data = objViewController.arrayDataPostsGet[indexPath.row]
                print(data)
                cell?.textLabel?.text = data.title
                cell?.textLabel?.text = data.body
                return cell!
    
    }
}


