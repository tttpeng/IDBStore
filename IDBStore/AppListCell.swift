//
//  AppListCell.swift
//  IDBStore
//
//  Created by Peng Tao on 15/12/3.
//  Copyright © 2015年 tttpeng. All rights reserved.
//

import UIKit

class AppListCell: UITableViewCell {

  @IBOutlet weak var iconImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  
  var paperRect = CGRectZero
  var coloredBoxRect = CGRectZero
  var paperRect2 = CGRectZero

  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  override func awakeFromNib() {
    super.awakeFromNib()
    self.backgroundColor = UIColor(white: 0.93, alpha: 1)
    
  }
}
