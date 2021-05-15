

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView : UITableView!
    var listOfHolidays = [HolidayDetails](){
        didSet{
            guard self.tableView != nil else { return print("Error in Reload Data") }
            DispatchQueue.main.async{
                self.tableView!.reloadData()
                self.navigationItem.title = "\(self.listOfHolidays.count) Holidays found"
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DataFetch { (holidaydetails) in 
            for items in holidaydetails{
                self.listOfHolidays.append(items)
                print(items)
            }
        }
    }
    
    func DataFetch(completionHandler : @escaping ([HolidayDetails]) -> Void){
        guard let url = URL(string: "https://holidayapi.com/v1/holidays?pretty&country=IN&year=2020&key=457d9815-2e0a-4140-9515-0f6ef0d5f8b9") else{return(print("Error"))}
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else{ return print("Error")}
            do{
                let holidayData = try JSONDecoder().decode(Holidays.self, from: data)
                let holidayDetail = holidayData.holidays
                completionHandler(holidayDetail)
            }
            catch{
                let error = error
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}


extension ViewController : UITableViewDataSource,UITableViewDelegate {

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
        cell.detailTextLabel?.text = holidays.date
        return cell
    }
}


