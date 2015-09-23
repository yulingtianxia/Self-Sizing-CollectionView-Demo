//
//  ViewController.swift
//  UICollectionViewSelfSizingDemo
//
//  Created by 杨萧玉 on 15/4/12.
//  Copyright (c) 2015年 杨萧玉. All rights reserved.
//

import UIKit

let text = "The UICollectionViewFlowLayout class is a concrete layout object that organizes items into a grid with optional header and footer views for each section. The items in the collection view flow from one row or column (depending on the scrolling direction) to the next, with each row comprising as many cells as will fit. Cells can be the same sizes or different sizes."

let strings = text.componentsSeparatedByString(" ")
class ViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        (collectionViewLayout as! UICollectionViewFlowLayout).estimatedItemSize  = CGSize(width: 20, height: 20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return strings.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("selfsizingcell", forIndexPath: indexPath) as! SelfSizingCell
        cell.textLabel.text = strings[indexPath.item]
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        print(kind)
        return collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "selfsizingheader", forIndexPath: indexPath) 
    }
    
}

