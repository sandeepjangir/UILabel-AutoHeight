//
//  UILable+AutoHeight.swift
//  LabelAutosize
//
//  Created by Sandeep Jangir on 10/12/15.
//  Copyright © 2015 Sandeep Jangir. All rights reserved.
//

import UIKit

extension UILabel {
    func heightWithConstrainedWidth(width:CGFloat, font:UIFont) -> CGFloat {
        
        let constraintRect = CGSize(width: width, height: CGFloat.max)
        
        return (self.text as NSString?)!.boundingRectWithSize(constraintRect, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName:font], context: nil).height
    
    }
}