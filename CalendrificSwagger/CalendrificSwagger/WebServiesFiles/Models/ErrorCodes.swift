//
// ErrorCodes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Whenever the Calendarific server detects an input error it will return an HTTP 422 status code along with a JSON object containing error details */

public struct ErrorCodes: Codable {

    /** Maintenance The Calendarific API is offline for maintenance. */
    public var _600: String?
    /** Unauthorized Missing or incorrect API token. */
    public var _601: String?
    /** Invalid query parameters. */
    public var _602: String?
    /** Authorized Subscription level required. */
    public var _603: String?

    public init(_600: String?, _601: String?, _602: String?, _603: String?) {
        self._600 = _600
        self._601 = _601
        self._602 = _602
        self._603 = _603
    }

    public enum CodingKeys: String, CodingKey { 
        case _600 = "600"
        case _601 = "601"
        case _602 = "602"
        case _603 = "603"
    }


}

