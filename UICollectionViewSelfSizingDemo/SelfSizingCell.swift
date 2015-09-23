//
//  SelfSizingCell.swift
//  UICollectionViewSelfSizingDemo
//
//  Created by 杨萧玉 on 15/4/12.
//  Copyright (c) 2015年 杨萧玉. All rights reserved.
//

import UIKit

class SelfSizingCell: UICollectionViewCell {
    @IBOutlet weak var textLabel: UILabel!
    
    override func preferredLayoutAttributesFittingAttributes(layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        let attributes = super.preferredLayoutAttributesFittingAttributes(layoutAttributes)
        attributes.frame = NSString(string: textLabel.text!).boundingRectWithSize(CGSize(width: intmax_t(), height: Int(textLabel.frame.size.height)), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName:textLabel.font], context: nil)
        return attributes
    }
}
