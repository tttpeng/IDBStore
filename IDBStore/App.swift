//
//  App.swift
//  IDBStore
//
//  Created by Peng Tao on 15/12/10.
//  Copyright © 2015年 tttpeng. All rights reserved.
//

import Foundation
import ObjectMapper


struct App  {
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

  
  
  init () {
    
  }
  

  
  init(_ dict: Dictionary<String, String>) {
    self.init()
    appKey = dict["appKey"];
    appFileSize = dict["appFileSize"];
    appName = dict["appName"];
    appVersion = dict["appVersion"];
    appVersion = dict["appVersion"];
    appIdentifier = dict["appIdentifier"];
    appDescription = dict["appDescription"];
    appUpdateDescription = dict["appUpdateDescription"];
    appScreenshots = dict["appScreenshots"];
    appCreated = dict["appCreated"];
  }
  
}


