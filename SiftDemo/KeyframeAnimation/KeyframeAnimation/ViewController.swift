//
//  ViewController.swift
//  KeyframeAnimation
//
//  Created by 黄露 on 2017/1/20.
//  Copyright © 2017年 黄露. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var anim1 = AnimationManager.shareInstance
        
        
        print(anim1.hash)
        
        var anim2 = AnimationManager.shareInstance
        
        print(anim2.hash)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

