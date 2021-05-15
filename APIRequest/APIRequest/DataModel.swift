
import Foundation

struct Holidays : Codable {
    var holidays : [HolidayDetails]
}
struct HolidayDetails : Codable {
    var name : String
    var date : String
    
}
