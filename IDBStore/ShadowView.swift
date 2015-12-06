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
    
//    self.layer.masksToBounds = true

  

  }
  
  override func layoutSubviews() {
//
//    let coloredBoxMargin: CGFloat = 6.0;
//    let coloredBoxHeight: CGFloat = 75.0;
//    let paperMargin: CGFloat = 8.0;
//    
//    self.coloredBoxRect = CGRectMake(coloredBoxMargin, coloredBoxMargin, self.bounds.size.width-coloredBoxMargin*2, coloredBoxHeight);
//
//    self.paperRect = CGRectMake(paperMargin, CGRectGetMaxY(self.coloredBoxRect), self.bounds.size.width-paperMargin*2, self.bounds.size.height-CGRectGetMaxY(self.coloredBoxRect));
//    
        self.layer.shadowColor   = UIColor.lightGrayColor().CGColor
    self.layer.shadowOpacity = 1
    self.layer.shadowRadius = 1
//    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.cornerRadius = 1


        self.layer.shadowPath    = UIBezierPath(rect:
          CGRectMake(0,
            0,
            self.frame.size.width - 10,
            self.frame.size.height - 10)).CGPath
    
            self.layer.zPosition = 1000

//
  }
//
//  
//  
//  override func drawRect(rect: CGRect) {
//    
//    let context = UIGraphicsGetCurrentContext()
//
//    let whiteColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).CGColor
//    let shadowColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.5).CGColor
//    
//    CGContextSetFillColorWithColor(context, UIColor.whiteColor().CGColor);
//    CGContextFillRect(context, paperRect);
//    
//    CGContextSaveGState(context);
//    CGContextSetShadowWithColor(context, CGSizeMake(0, 2), 3.0, UIColor.blackColor().CGColor);
//    CGContextSetFillColorWithColor(context, UIColor.whiteColor().CGColor);
//    CGContextFillRect(context, self.coloredBoxRect);
//    CGContextRestoreGState(context);
//
//    
//  }
  
}
