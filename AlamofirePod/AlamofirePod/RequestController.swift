

import Foundation
import Alamofire

class RequestController {
    
    func fetchData(){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") else {return print("Fault in URL")}

        
        Alamofire.request(url).responseJSON{ (response) in
            if response.result.isSuccess{
                guard let data = response.result.value as? [String:Any] else {return print("Error at variable data")}
                guard let json = data as? [String:Any] else {return print("Error at variable json")}
                print(json)
            }
            else{
                print("Error in response")
            }
        }
    }
}
