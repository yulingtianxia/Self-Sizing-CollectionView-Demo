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
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        let attributes = super.preferredLayoutAttributesFitting(layoutAttributes)
        let maxBounds = CGRect.init(x: 0, y: 0, width: .greatestFiniteMagnitude, height: textLabel.frame.size.height)
        attributes.frame = textLabel.textRect(forBounds: maxBounds, limitedToNumberOfLines: textLabel.numberOfLines)
        return attributes
    }
}
