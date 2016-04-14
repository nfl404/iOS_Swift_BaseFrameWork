//
//  ViewController.swift
//  iOS_Swift_BaseFrameWork
//
//  Created by Mr nie on 16/4/14.
//  Copyright © 2016年 程序猿:NiePlus   博客地址:http://nieplus.blog.com. All rights reserved.
//

import UIKit

class ViewController: NPUIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setViewCOntrollerRightButtonItem()
    }
    
    func setViewCOntrollerRightButtonItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(nomalImageName: "share", highlightedImageName: "share", selectedImageName: "share", targer: self, action: #selector(ViewController.toSHareViewController))
    }
    
    func toSHareViewController() {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

