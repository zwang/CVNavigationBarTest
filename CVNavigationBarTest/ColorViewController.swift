//
//  AnotherViewController.swift
//  CVNavigationBarTest
//
//  Created by Zhao Wang on 3/25/16.
//  Copyright © 2016 Zhao Wang. All rights reserved.
//

import Foundation
import UIKit

class ColorViewController: UIViewController {

    private let color: UIColor
    init(color: UIColor) {
        self.color = color
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not Implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "\(color)"

        let viewFrame = self.view.frame
        let headerHeight: CGFloat = 210
        let headerView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: viewFrame.width, height: headerHeight)))
        headerView.backgroundColor = color

        self.view.addSubview(headerView)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let emptyImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(emptyImage, forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = emptyImage
        self.navigationController?.navigationBar.translucent = true
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
    }

    override func viewWillDisappear(animated: Bool) {
        // Put this here for better animation effect
        self.navigationController?.navigationBar.setBackgroundImage(nil, forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.shadowImage = nil
        self.navigationController?.navigationBar.translucent = false
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
        super.viewWillDisappear(animated)
    }
}