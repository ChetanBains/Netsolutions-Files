import UIKit

let configuration = URLSessionConfiguration.default
configuration.waitsForConnectivity = true
let session = URLSession(configuration: configuration)

let url = URL(string : "https://jsonplaceholder.typicode.com/todos/1")

let task = session.dataTask(with: url!){ (data,response,error) in
    
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {return print("Error Response")}
    
    guard let data = data else{return print(error.debugDescription)}
    
    if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String?{
        print(result)
    }
}
task.resume()
