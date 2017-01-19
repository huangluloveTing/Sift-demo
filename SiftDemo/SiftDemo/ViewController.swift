//
//  ViewController.swift
//  SiftDemo
//
//  Created by 黄露 on 2017/1/19.
//  Copyright © 2017年 黄露. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func btn2Action(_ sender: Any) {
        self.removeAnimation(layer: self.subView.layer)
        self.addLayerKeyFrameAnimationRock(layer: self.subView.layer)
        
    }
    
    @IBAction func btn1Action(_ sender: Any) {
        self.removeAnimation(layer: self.subView.layer)
        self.addLayerKeyframeAnimationOrbit(layer: self.subView.layer)
    }
    
    func addLayerKeyFrameAnimationRock(layer:CALayer) -> Void {
        
        let animation = CAKeyframeAnimation.init(keyPath: "position.x")
        animation.values = [0 , 10 , 0 , -10]
        //additive设置为true是使Core Animation 在更新 presentation layer 之前将动画的值添加到 model layer 中去。可以看到上面的values是0，10，-10，0. 没有设置的话values=layer.position.x+0, layer.position.x+10, layer.position.x-10
        animation.isAdditive = true
        animation.duration = 0.5
        animation.repeatCount = MAXFLOAT
        layer.add(animation, forKey: "RockAnimation")
    }
    
    func addLayerKeyframeAnimationOrbit(layer:CALayer) -> Void {
        let animation = CAKeyframeAnimation.init(keyPath: "position")
        let boundingRect = CGRect.init(x: layer.frame.origin.x - 50, y: layer.frame.origin.y - 50, width: 200, height: 200)
        animation.path = CGPath.init(ellipseIn: boundingRect, transform: nil)
        animation.duration = 1
        animation.repeatCount = MAXFLOAT
        //其值为kCAAnimationPaced，保证动画向被驱动的对象施加一个恒定速度，不管路径的各个线段有多长，并且无视我们已经设置的keyTimes
        animation.calculationMode = kCAAnimationPaced
        //kCAAnimationRotateAuto，确定其沿着路径旋转（具体要自己来体验，这里难解释）
        animation.rotationMode = kCAAnimationRotateAuto
        layer.add(animation, forKey: "Oribit")
    }
    
    func removeAnimation(layer:CALayer)  {
        layer.removeAllAnimations();
    }
}

