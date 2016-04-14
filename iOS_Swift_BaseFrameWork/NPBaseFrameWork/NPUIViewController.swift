//
//  NPUIViewController.swift
//  iOS-Swift_BaseFrameWork
//
//  Created by Mr nie on 16/4/14.
//  Copyright © 2016年 程序猿:NiePlus   博客地址:http://nieplus.blog.com. All rights reserved.
//

import UIKit


class NPUIViewController: UIViewController,UIGestureRecognizerDelegate,UINavigationControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        //背景颜色
        self.view.backgroundColor = UIColor.grayColor()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }

}
