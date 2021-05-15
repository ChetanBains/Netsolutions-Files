
import Foundation

struct HolidayRequest{
    
    //let url = "https://holidayapi.com/v1/holidays?pretty&country=IN&year=2020&key=457d9815-2e0a-4140-9515-0f6ef0d5f8b9"
    func fetchFilms(completionHandler: @escaping ([Holidays]) -> Void) {
        let url = URL(string: "https://holidayapi.com/v1/holidays?pretty&country=IN&year=2020&key=457d9815-2e0a-4140-9515-0f6ef0d5f8b9")!

        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
          if let error = error {
            print("Error with fetching Data: \(error)")
            return
          }
          
          guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
            print("Error with the response, unexpected status code: \(response)")
            return
          }

          if let data = data,
            let filmSummary = try? JSONDecoder().decode(FilmSummary.self, from: data) {
            completionHandler(filmSummary.results ?? [])
          }
        })
        task.resume()
      }

}
