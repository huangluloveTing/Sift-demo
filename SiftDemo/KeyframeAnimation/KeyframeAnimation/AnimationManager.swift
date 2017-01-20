//
//  AnimationManager.swift
//  KeyframeAnimation
//
//  Created by 黄露 on 2017/1/20.
//  Copyright © 2017年 黄露. All rights reserved.
//

import UIKit

class AnimationManager: NSObject {
    
    static let shareInstance = AnimationManager.init()
    
    private override init() {
        
    }
    
    /**
     *  关键帧动画, 关键帧动画就是在动画控制过程中开发者指定主要的动画状态, 至于各种状态间动画如何进行则由系统自动运算补充(每个两个关键帧之间系统形成的动画成为补间动画), 这种动画的好处就是开发者不用逐个每个动画帧, 而只关心几个关键帧的状态即可
     
     关键帧动画开发分为两种形式, 一种是通过设置不同的属性进行关键帧控制
     另一种是通过绘制路径进行关键帧控制, 后者优先级高于前者, 如果设置了路径则属性就不再起作用
     
     */
    
    
    /**
     *  关于关键帧动画路径
     
     *  如果路径不是曲线的话,
     矩形路径是从矩形的左上角开始运行, 顺时针运行一周回到最上角.
     椭圆路径的话就是从椭圆的右侧开始(0度)顺时针一周回到右侧.
     */
    
    /**
     *  keyTimes
     *
     各个关键帧的时间控制。前面使用values设置了四个关键帧，默认情况下每两帧之间的间隔为:8/(4-1)秒。如果想要控制动画从第一帧到第二针占用时间4秒，从第二帧到第三帧时间为2秒，而从第三帧到第四帧时间2秒的话，就可以通过keyTimes进行设置。keyTimes中存储的是时间占用比例点，此时可以设置keyTimes的值为0.0，0.5，0.75，1.0（当然必须转换为NSNumber），也就是说1到2帧运行到总时间的50%，2到3帧运行到总时间的75%，3到4帧运行到8秒结束。
     
     
     */
    
    
    /**
     *  caculationMode
     *
     *  动画计算模式。还拿上面keyValues动画举例，之所以1到2帧能形成连贯性动画而不是直接从第1帧经过8/3秒到第2帧是因为动画模式是连续的
     kCAAnimationLinear 这是计算模式的默认值
     kCAAnimationDiscrete离散的那么你会看到动画从第1帧经过8/3秒直接到第2帧，中间没有任何过渡
     kCAAnimationPaced（均匀执行，会忽略keyTimes）、
     kCAAnimationCubic（平滑执行，对于位置变动关键帧动画运行轨迹更平滑 
     kCAAnimationCubicPaced（平滑均匀执行） 
     */
    
    //MARK: - 关键帧动画----> 设置关键帧的点坐标执行动画路径
    
    public func translationAnimation1(layer:CALayer) ->Void {
        
        let keyAnimation = CAKeyframeAnimation.init(keyPath: "position")
        
        
    }
}
