//
//  NPUIBarButtonItemExtension.swift
//  iOS-Swift_BaseFrameWork
//
//  Created by Mr nie on 16/4/14.
//  Copyright © 2016年 程序猿:NiePlus   博客地址:http://nieplus.blog.com. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    // 自定义导航按钮item
    convenience init(nomalImageName:String, highlightedImageName:String, selectedImageName:String, targer:AnyObject, action:Selector) {
        let button: UIButton = UIButton(type: .Custom)
        button.setImage(UIImage(named: nomalImageName), forState: .Normal)
        button.setImage(UIImage(named: highlightedImageName), forState: .Highlighted)
        button.frame = CGRectMake(0, 0, 50, 44)
        button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -10)
        button.setImage(UIImage(named: selectedImageName), forState: .Selected)
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        button.addTarget(targer, action: action, forControlEvents: .TouchUpInside)
        
        self.init(customView: button)
    }
}