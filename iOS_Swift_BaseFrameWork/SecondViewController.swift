//
//  SecondViewController.swift
//  iOS_Swift_BaseFrameWork
//
//  Created by Mr nie on 16/4/14.
//  Copyright © 2016年 程序猿:NiePlus   博客地址:http://nieplus.blog.com. All rights reserved.
//

import UIKit

class SecondViewController: NPUIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //标题
        self.navigationItem.title = "SecondViewController"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.navigationController?.pushViewController(ThirdViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
