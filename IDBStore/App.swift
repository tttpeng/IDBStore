//
//  App.swift
//  IDBStore
//
//  Created by Peng Tao on 15/12/10.
//  Copyright © 2015年 tttpeng. All rights reserved.
//

import Foundation
import ObjectMapper


struct App : Mappable {
  var appKey: String?
  var appFileSize: String?
  var appName: String?
  var appVersion: String?
  var appBuildVersion: String?
  var appIdentifier: String?
  var appDescription: String?
  var appUpdateDescription: String?
  var appScreenshots: String?
  var appCreated: String?

  
  init?(_ map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    appKey     <- map["celcius"]
    appFileSize  <- map["fahrenheit"]
  }
}


