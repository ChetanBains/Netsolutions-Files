

import Foundation
import Alamofire

class PostController{
    func postMethod() {
        

        let params: Parameters = [
            "firstname": "Chetanjeev Singh",
            "lastname": "Bains",
            "age": "23"
        ]
        
        Alamofire.request("http://YourURI.com/post/", method: .post, parameters: params,encoding: JSONEncoding.default, headers: nil).responseJSON  { response in
            
        do {
            guard let jsonObject = try JSONSerialization.jsonObject(with: response.data!) as? [String: Any]
            else {return print("Error: Cannot convert data to JSON object")}
            
            guard let jsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted)
            else {return print("Error: Cannot convert JSON object to Pretty JSON data")}
            
            guard let printedJson = String(data: jsonData, encoding: .utf8)
            else {return  print("Error: Could print JSON in String")}
                        
            print(printedJson)
            }
        catch {return print("Error: Trying to convert JSON data to string")}
            
        }
   }
}
