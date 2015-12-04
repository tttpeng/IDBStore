//
//  ViewController.swift
//  IDBStore
//
//  Created by tpeng on 15/11/28.
//  Copyright © 2015年 tttpeng. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var otherTableView: UITableView!
  @IBOutlet weak var customizedTableView: UITableView!
  @IBOutlet weak var productTableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()

    
//    customizedTableView.registerClass(AppListCell.self, forCellReuseIdentifier: "AppListCell");
//    productTableView.registerClass(AppListCell.self, forCellReuseIdentifier: "AppListCell");
//    otherTableView.registerClass(AppListCell.self, forCellReuseIdentifier: "AppListCell");
//    customizedTableView.registerNib(UINib(nibName: "AppListCellID", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "123")
//    productTableView.registerNib(UINib(nibName: "AppListCellID", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "123")
//    otherTableView.registerNib(UINib(nibName: "AppListCellID", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "123")
//    
//    let nib = UINib(nibName: "AppListCellID", bundle: nil)
//    
//    productTableView.registerNib(nib, forCellReuseIdentifier: "AppListCellID")
//    customizedTableView.registerNib(nib, forCellReuseIdentifier: "AppListCellID")
//    otherTableView.registerNib(nib, forCellReuseIdentifier: "AppListCellID")



  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if tableView == productTableView {
      return 100;
    }
    return 1;
  }
  
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

    var identifier = ""
    identifier = "AppListCell1";
    let cell = tableView.dequeueReusableCellWithIdentifier(identifier) as! AppListCell
    return cell
    

    if tableView == productTableView {
      identifier = "AppListCell1";
      let cell = tableView.dequeueReusableCellWithIdentifier(identifier) as! AppListCell
      return cell

    } else if  tableView == customizedTableView {
      identifier = "AppListCell1"
      let cell = tableView.dequeueReusableCellWithIdentifier(identifier) as! AppListCell
      return cell

    } else {
      identifier = "AppListCell1"
      let cell = tableView.dequeueReusableCellWithIdentifier(identifier) as! AppListCell
      return cell

    }
    
  }
  


}

