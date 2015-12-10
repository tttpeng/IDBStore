//
//  ViewController.swift
//  IDBStore
//
//  Created by tpeng on 15/11/28.
//  Copyright © 2015年 tttpeng. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var otherTableView: UITableView!
  @IBOutlet weak var customizedTableView: UITableView!
  @IBOutlet weak var productTableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let network = NetWorkService();
    network.getAllProduct()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if tableView == productTableView {
      return 100;
    }
    return 20;
  }
  
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

    var identifier = ""
    identifier = "AppListCell";
    let cell = tableView.dequeueReusableCellWithIdentifier(identifier) as! AppListCell

    return cell
  }
  


}

