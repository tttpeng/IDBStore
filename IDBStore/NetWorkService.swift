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
  
  
  func getAllProduct(completion:([App]?, Error?) -> Void) {
    
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
          
          
          let resultArray =  (JSON.valueForKey("data") as! NSDictionary).valueForKey("list") as! [Dictionary<String,String>]
          

          var modelArray = [App]()
          
          for name in resultArray{
            
            let app = App.init(name);
            
            modelArray.append(app)
          }
          completion(modelArray, nil)
          
          
        }
        
    }
  }
  
  
  
  
  func myClosure(testStr:String)->Void{
    //给textLab 赋值
    //这句话什么时候执行？，闭包类似于oc中的block或者可以理解成c语言中函数，只有当被调用的时候里面的内容才会执行
  }
  
}
