

import Foundation

enum HolidayError : Error {
    case noDataAvailable
    case canNotProcessData
    
}

//https://calendarific.com/api/v2/holidays?api_key=f031e7ecc10e5a355f09ab74cc3b3a4ccebd9c99&country=US&year=2020

struct HolidaysRequest{
    let resourceURL : URL
    let API_KEY = "f031e7ecc10e5a355f09ab74cc3b3a4ccebd9c99"
    
    init(countryCode : String) {
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy"
        let currentYear = format.string(from: date)
        //URL String
        let resourceString = "https://calendarific.com/api/v2/holidays?api_key=\(API_KEY)&country=\(countryCode)&year=\(currentYear)"
        
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        // To use in scope of Struct HolidayRequest
        self.resourceURL = resourceURL
    }
    
    func getHoliday(completion: @escaping(Result<[HolidayDetail],HolidayError>) -> Void){
        let dataTask = URLSession.shared.dataTask(with: resourceURL){data,_,_ in
            guard let jsonData = data else{
                completion(.failure(.noDataAvailable))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let holidayResponse = try decoder.decode(HolidayResponse.self, from: jsonData)
                let holidayDetails = holidayResponse.response.holidays
                completion(.success(holidayDetails))
            }catch{
                completion(.failure(.canNotProcessData))
            }
        }
        // Start Accessing API
        dataTask.resume()
    }
}
