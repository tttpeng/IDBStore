//
//  NetWorkService.swift
//  IDBStore
//
//  Created by Peng Tao on 15/12/10.
//  Copyright © 2015年 tttpeng. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class NetWorkService {
  
  
  func getAllProduct() {

    let bodyParameters = [
      "uKey":kUserKey,
      "_api_key":kApiKey,
    ]
    
    let encoding = Alamofire.ParameterEncoding.URL
    
    // Fetch Request
    Alamofire.request(.POST, "https://www.pgyer.com/apiv1/user/listMyPublished", parameters: bodyParameters, encoding: encoding)
      .validate(statusCode: 200..<300)
      
      .responseJSON { response in
        print(response.request)  // original URL request
        print(response.response) // URL response
        print(response.data)     // server data
        print(response.result)   // result of response serialization
        
        if let JSON = response.result.value {
          print("JSON: \(JSON)")
        
          
        }
    }
  }
  
  
}
