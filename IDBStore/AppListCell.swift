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
  
  var paperRect = CGRectZero
  var coloredBoxRect = CGRectZero
  var paperRect2 = CGRectZero

  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  override func awakeFromNib() {
    super.awakeFromNib()    
    
  }
  
  override func layoutSubviews() {
    
    
    self.backgroundColor = UIColor(white: 0.93, alpha: 1)
    let coloredBoxMargin: CGFloat = 4
    let coloredBoxHeight: CGFloat = 77.0
    
    self.coloredBoxRect = CGRectMake(coloredBoxMargin + 4, coloredBoxMargin, self.bounds.size.width - coloredBoxMargin * 2 - 8, coloredBoxHeight);
    
    self.paperRect = CGRectMake(coloredBoxMargin + 4 + 0.5, CGRectGetMinY(self.coloredBoxRect) - 0.5 , self.bounds.size.width-coloredBoxMargin*2 - 1 - 8 , coloredBoxHeight + 1 );
    
//    self.paperRect2 = CGRectMake(coloredBoxMargin + 4 + 0.5, CGRectGetMinY(self.coloredBoxRect) + 0.5 , self.bounds.size.width-coloredBoxMargin*2 - 1 - 8 , coloredBoxHeight );
//
    
    //    self.layer.shadowColor   = UIColor.grayColor().CGColor
    //    self.layer.shadowOpacity = 1
    //    self.layer.shadowRadius = 2
    //    self.layer.shadowPath    = UIBezierPath(rect:
    //      CGRectMake(5,
    //        8,
    //        self.frame.size.width - 10,
    //        self.frame.size.height - 10)).CGPath
    //
    //        self.layer.zPosition = 200
    
    
  }
  
  override func drawRect(rect: CGRect) {
    
//    let context = UIGraphicsGetCurrentContext()
////
//    CGContextSetFillColorWithColor(context,UIColor(colorLiteralRed:1 , green: 1, blue: 1, alpha: 1).CGColor)
//    CGContextSetShadowWithColor(context, CGSizeMake(0, 0.5),1, UIColor(white: 0.73, alpha: 1).CGColor)
//    CGContextFillRect(context, self.paperRect)
//    CGContextSaveGState(context)
//
//    
//    CGContextSetFillColorWithColor(context,UIColor(white:0.99, alpha: 0.97).CGColor)
//    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 0, UIColor(white: 0.60, alpha: 0.9).CGColor)
//    CGContextFillRect(context, self.coloredBoxRect)
//    CGContextSaveGState(context)
    

    

//    CGContextSetFillColorWithColor(context, UIColor.whiteColor().CGColor)
//    CGContextSetShadowWithColor(context, CGSizeMake(0, 0.5), 1, UIColor.lightGrayColor().CGColor)
//    CGContextFillRect(context, paperRect2)
//    CGContextSaveGState(context)
//    CGContextSetFillColorWithColor(context, UIColor.whiteColor().CGColor)
//    CGContextSetShadowWithColor(context, CGSizeMake(0.5, 0), 1, UIColor.lightGrayColor().CGColor)
//    CGContextFillRect(context,self.paperRect)
  }

}
