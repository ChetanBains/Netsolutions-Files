//
// JSONPlaceholderResourcePostAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class JSONPlaceholderResourcePostAPI {
    /**

     - parameter userId: (query)  (optional)
     - parameter _id: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postsGet(userId: Int? = nil, _id: Int? = nil, completion: @escaping ((_ data: [DemoPost]?,_ error: Error?) -> Void)) {
        postsGetWithRequestBuilder(userId: userId, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /posts
     - Returns a list of title and body with UserID
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
     
     - parameter userId: (query)  (optional)
     - parameter _id: (query)  (optional)

     - returns: RequestBuilder<[DemoPost]> 
     */
    open class func postsGetWithRequestBuilder(userId: Int? = nil, _id: Int? = nil) -> RequestBuilder<[DemoPost]> {
        let path = "/posts"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(), 
            "id": _id?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[DemoPost]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
