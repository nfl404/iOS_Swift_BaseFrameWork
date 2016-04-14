//
//  NPNavigationController.swift
//  iOS-Swift_BaseFrameWork
//
//  Created by Mr nie on 16/4/11.
//  Copyright © 2016年 程序猿:NiePlus   博客地址:http://nieplus.blog.com. All rights reserved.
//
import UIKit

class NPNavigationController: UINavigationController,UIGestureRecognizerDelegate,UINavigationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.interactivePopGestureRecognizer?.delegate = self
    }

    override func pushViewController(viewController: UIViewController, animated: Bool) {
        //判断self.childViewControllers是不是拿到所有子控制器，self.childViewControllers.count为0时，只有子控制器，干掉返回按钮
        if self.childViewControllers.count > 0 {
            //自定义返回按钮
            let returnBtn:UIButton = UIButton(type: .Custom)
            //设置title
            returnBtn.setTitle("返回", forState: .Normal)
            //正常下image
            returnBtn.setImage(UIImage(named: "black"), forState: .Normal)
            //高亮下image
            returnBtn.setImage(UIImage(named: "grat"), forState: .Highlighted)
            //正常下颜色
            returnBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
            //高亮下颜色
            returnBtn.setTitleColor(UIColor.lightGrayColor(), forState: .Highlighted)
            //设置按钮位置大小，注意这里位置无效果
            returnBtn.frame = CGRectMake(0, 0, 70, 20)
            //按钮内部对齐
            returnBtn.contentHorizontalAlignment = .Left
            //设置图片内部位置
            returnBtn.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
            //添加点击事件
            returnBtn.addTarget(self, action: #selector(NPNavigationController.returnBtnClick), forControlEvents: .TouchUpInside)
            //当视图推送时隐藏tabbar
            viewController.hidesBottomBarWhenPushed = true
            //自定义push视图的leftBarButtonItem
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: returnBtn)
        }
        
        //子控制器通过这个方法推送视图
        super.pushViewController(viewController, animated: animated)
        self.interactivePopGestureRecognizer!.enabled = true
    }
    
    func returnBtnClick() {
        self .popViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
