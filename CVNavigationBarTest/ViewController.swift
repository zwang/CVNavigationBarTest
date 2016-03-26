//
//  ViewController.swift
//  CVNavigationBarTest
//
//  Created by Zhao Wang on 3/25/16.
//  Copyright © 2016 Zhao Wang. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Colors"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let colors = [UIColor.redColor(), UIColor.blueColor(), UIColor.brownColor(), UIColor.purpleColor(), UIColor.greenColor(), UIColor.yellowColor(), UIColor.cyanColor(), UIColor.darkGrayColor(), UIColor.lightGrayColor(), UIColor.grayColor()]

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = self.collectionView!.dequeueReusableCellWithReuseIdentifier("colorCell", forIndexPath: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }

    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let color = colors[indexPath.item]
        let colorVC = ColorViewController(color: color)
        self.navigationController?.pushViewController(colorVC, animated: true)
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        if indexPath.item  == 0 {
            return CGSize(width: self.view.frame.width, height: 175)
        }

        let width = self.view.frame.width / 2 - 2.5
        let height: CGFloat = 146
        return CGSize(width: width, height: height)
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5
    }


}

