

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var tableView : UITableView!
    @IBOutlet var searchBar : UISearchBar!
    var listOfHolidays = [HolidayDetail](){
        didSet{
            DispatchQueue.main.async{
                self.tableView.reloadData()
                self.navigationItem.title = "\(self.listOfHolidays.count) Holidays found"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        searchBar.delegate = self
    }


}



extension ViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfHolidays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        let holidays = listOfHolidays[indexPath.row]
        cell.textLabel?.text = holidays.name
        cell.detailTextLabel?.text = holidays.date.iso
        return cell
    }
    
    
}




extension ViewController : UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchBarText = searchBar.text else {return}
        let holidayRequest = HolidaysRequest(countryCode: searchBarText)
        holidayRequest.getHoliday{ result in
            switch result {
                case .failure(let error): print(error)
                case .success(let holidays): self.listOfHolidays = holidays
            }
    }
        searchBar.resignFirstResponder()
  }
}

