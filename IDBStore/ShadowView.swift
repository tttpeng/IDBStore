//
//  ShadowView.swift
//  IDBStore
//
//  Created by Peng Tao on 15/12/3.
//  Copyright © 2015年 tttpeng. All rights reserved.
//

import UIKit

class ShadowView: UIView {

  var paperRect = CGRectZero
  var coloredBoxRect = CGRectZero

  
  required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    self.layer.shadowColor   = UIColor.lightGrayColor().CGColor
    self.layer.shadowOpacity = 1
    self.layer.shadowRadius = 0.5
    self.layer.shadowOffset = CGSizeMake(0,0.5);
    self.layer.cornerRadius = 1
  }
  
}
