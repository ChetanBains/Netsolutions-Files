//
// CalendrificAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class CalendrificAPI {
    /**

     - parameter aPIKey: (query)  
     - parameter country: (query)  
     - parameter year: (query)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postsGet(aPIKey: String, country: String, year: Int, completion: @escaping ((_ data: [DemoPost]?,_ error: Error?) -> Void)) {
        postsGetWithRequestBuilder(aPIKey: aPIKey, country: country, year: year).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /posts
     - Returns list holidays with specfied Parameters.
     - examples: [{contentType=application/json, example=[ {
  "UserId" : 2,
  "id" : 3,
  "title" : "this is album cover",
  "body" : "Content of album"
}, {
  "UserId" : 2,
  "id" : 3,
  "title" : "this is album cover",
  "body" : "Content of album"
} ]}]
     
     - parameter aPIKey: (query)  
     - parameter country: (query)  
     - parameter year: (query)  

     - returns: RequestBuilder<[DemoPost]> 
     */
    open class func postsGetWithRequestBuilder(aPIKey: String, country: String, year: Int) -> RequestBuilder<[DemoPost]> {
        let path = "/posts"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "API_Key": aPIKey, 
            "country": country, 
            "year": year.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[DemoPost]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
