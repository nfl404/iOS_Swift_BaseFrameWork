//
//  NPTabBarController.swift
//  iOS-Swift_BaseFrameWork
//
//  Created by Mr nie on 16/4/11.
//  Copyright © 2016年 程序猿:NiePlus   博客地址:http://nieplus.blog.com. All rights reserved.
//
import UIKit

class NPTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置tabbar上面的字setTitleTextAttributes
        self.setTabBarTitleAttributesStyle()
        //初始化子视图1，2，3
        self.setChildViewController(ViewController(), title: "1号", image: "", selectImage: "")
        self.setChildViewController(UIViewController(), title: "2号", image: "", selectImage: "")
        self.setChildViewController(UIViewController(), title: "3号", image: "", selectImage: "")
    }
    
    // 设置tabbar上面的字
    func setTabBarTitleAttributesStyle() {
        //UI_APPEARANCE_SELECTOR 外观
        let item:UITabBarItem = UITabBarItem.appearance()
        //通产字体颜色
        item.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.lightGrayColor()], forState: .Normal)
        //选中字体颜色
        item.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.darkGrayColor()], forState: .Selected)
        //通常字体大小
        item.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 16)!], forState: .Normal)
        //选中字体大小
        item.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 16)!], forState: .Selected)
    }
    
    //导航子视图封装
    func setChildViewController(childViewController: UIViewController, title: String, image: String, selectImage: String) {
        //注意视图层级关系，最上边时UINavigationController，创建一个视图即给一个UINavigationController
        let nav:NPNavigationController = NPNavigationController(rootViewController: childViewController)
        //子视图显示在UITabbarController上显示的tabbar标题
        nav.tabBarItem.title = title
        //子视图显示在UITabbarController上未选中tabbar的图片
        nav.tabBarItem.image = UIImage(named: image)
        //子视图显示在UITabbarController上选中tabbar的图片
        nav.tabBarItem.selectedImage = UIImage(named: selectImage)
        //子视图背景颜色
        nav.view.backgroundColor = UIColor.grayColor()
        //注意标题显示是子视图的标题，非UINavigationController
        childViewController.navigationItem.title = title
        //添加子视图
        self.addChildViewController(nav)
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
