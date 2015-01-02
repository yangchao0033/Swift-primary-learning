//
//  ViewController.swift
//  02-第一个UI程序
//
//  Created by 杨超 on 15-1-3.
//  Copyright (c) 2015年 yangchao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var btn = UIButton()
        btn.frame = CGRectMake(100, 100, 100, 100)
        btn.backgroundColor = UIColor.redColor()
        self.view.addSubview(btn)
        
        var imageView = UIImageView()
        imageView.image = UIImage(named: "002")
        imageView.frame = CGRectMake(100, 250, 50, 50)
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

