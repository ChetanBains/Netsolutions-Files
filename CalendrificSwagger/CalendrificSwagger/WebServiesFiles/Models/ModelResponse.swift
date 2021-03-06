//
// ModelResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Model containing Info of Response */

public struct ModelResponse: Codable {

    public var holidays: [HolidayArray]?

    public init(holidays: [HolidayArray]?) {
        self.holidays = holidays
    }

    public enum CodingKeys: String, CodingKey { 
        case holidays = "Holidays"
    }


}

