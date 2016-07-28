//
//  ViewController.swift
//  CoreAnimationDemo
//
//  Created by Zhang茹儿 on 16/6/29.
//  Copyright © 2016年 Ru.zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewAnimation = UIView()
    var leftCloudy = UIView()
    var rightCloudy = UIView()
    
    var point = UIView()
    let point1 = UIView()
    let point2 = UIView()
    let point3 = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        

//        self.sunny()
        self.cloudy()
//        self.snow()
//        self.rain()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}


extension ViewController {
    
    
    // sun
    func sunny() {
        let imageLayer1 = CALayer()
        imageLayer1.contents = UIImage(named: "内环")!.CGImage
        imageLayer1.frame = CGRect(x: 0, y: -self.view.frame.width * 0.90, width: self.view.frame.width, height: self.view.frame.width)
        view.layer.insertSublayer(imageLayer1, above: view.layer)
        let anim1 = CAKeyframeAnimation(keyPath: "transform.rotation")
        anim1.duration = 50.0
        anim1.repeatCount = MAXFLOAT
        anim1.values = [CGPoint(x: -100.0, y: 0.0),
            CGPoint(x: view.frame.width + 120.0, y: 100.0),
            CGPoint(x: -100.0, y: 0)]
            .map{NSValue(CGPoint: $0)}
        anim1.keyTimes = [0.0, 50.0]
        imageLayer1.addAnimation(anim1, forKey: nil)
        
        let imageLayer2 = CALayer()
        imageLayer2.contents = UIImage(named: "中环")!.CGImage
        imageLayer2.frame = CGRect(x: 20, y: -self.view.frame.width * 0.85, width: self.view.frame.width, height: self.view.frame.width)
        view.layer.insertSublayer(imageLayer2, above: view.layer)
        let anim2 = CAKeyframeAnimation(keyPath: "transform.rotation")
        anim2.duration = 80.0
        anim2.repeatCount = MAXFLOAT
        anim2.values = [CGPoint(x: 0.0, y: 0.0),
            CGPoint(x: -view.frame.width - 120.0, y: 100.0),
            CGPoint(x:  0.0, y: 0)]
            .map{NSValue(CGPoint: $0)}
        anim2.keyTimes = [0.0, 50.0]
        imageLayer2.addAnimation(anim2, forKey: nil)
        
        let imageLayer3 = CALayer()
        imageLayer3.contents = UIImage(named: "外环")!.CGImage
        imageLayer3.frame = CGRect(x: 0, y: -self.view.frame.width * 0.80, width: self.view.frame.width, height: self.view.frame.width)
        view.layer.insertSublayer(imageLayer3, above: view.layer)
        let anim3 = CAKeyframeAnimation(keyPath: "transform.rotation")
        anim3.duration = 80.0
        anim3.repeatCount = MAXFLOAT
        anim3.values = [CGPoint(x: -100.0, y: 0.0),
            CGPoint(x: view.frame.width + 120.0, y: 100.0),
            CGPoint(x: -100.0, y: 0)]
            .map{NSValue(CGPoint: $0)}
        anim3.keyTimes = [0.0, 50.0]
        imageLayer3.addAnimation(anim3, forKey: nil)
        
        let pointEmitter = CAEmitterLayer()
        pointEmitter.emitterPosition = CGPointMake(120, -120)
        
        
        pointEmitter.emitterSize = CGSizeMake(20, 20)
        pointEmitter.emitterMode = kCAEmitterLayerSurface
        pointEmitter.emitterShape = kCAEmitterLayerOldestLast
        //        pointEmitter.lifetime = 5
        
        
        let point1 = UIView()
        point1.layer.position = CGPointMake(self.view.frame.width * 0.5, 210)
        point1.layer.bounds = CGRectMake(0, 0, 5, 5)
        point1.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point1)
        
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            point1.frame.origin.x = self.view.frame.width * 0.5
            point1.frame.origin.y = 20
            point1.center = CGPointMake(10, 70)
            
            UIView.animateWithDuration(1.0, animations: {
                point1.transform = CGAffineTransformTranslate(point1.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.5
                scaleAnimation.toValue = 2.0
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point1.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        let point2 = UIView()
        point2.layer.position = CGPointMake(self.view.frame.width * 0.5, 210)
        point2.layer.bounds = CGRectMake(0, 0, 5, 5)
        point2.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point2)
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            point2.frame.origin.x = self.view.frame.width * 0.5
            point2.frame.origin.y = 20
            point2.center = CGPointMake(80, 100)
            
            UIView.animateWithDuration(1.0, animations: {
                point2.transform = CGAffineTransformTranslate(point2.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.0
                scaleAnimation.toValue = 1.5
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point2.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        let point3 = UIView()
        point3.layer.position = CGPointMake(self.view.frame.width * 0.5, 210)
        point3.layer.bounds = CGRectMake(0, 0, 5, 5)
        point3.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point3)
        
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            point3.frame.origin.x = self.view.frame.width * 0.5
            point3.frame.origin.y = 20
            point3.center = CGPointMake(100, 50)
            
            UIView.animateWithDuration(1.0, animations: {
                point1.transform = CGAffineTransformTranslate(point3.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0.7
                scaleAnimation.toValue = 1.2
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point3.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        let point4 = UIView()
        point4.layer.position = CGPointMake(self.view.frame.width * 0.5, 210)
        point4.layer.bounds = CGRectMake(0, 0, 5, 5)
        point4.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point4)
        
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            point4.frame.origin.x = self.view.frame.width * 0.5
            point4.frame.origin.y = 20
            point4.center = CGPointMake(self.view.frame.width - 10, 70)
            
            UIView.animateWithDuration(1.0, animations: {
                point1.transform = CGAffineTransformTranslate(point4.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.5
                scaleAnimation.toValue = 2.0
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point4.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }

        let point5 = UIView()
        point5.layer.position = CGPointMake(self.view.frame.width * 0.5, 210)
        point5.layer.bounds = CGRectMake(0, 0, 5, 5)
        point5.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point5)
        
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            point5.frame.origin.x = self.view.frame.width * 0.5
            point5.frame.origin.y = 20
            point5.center = CGPointMake(self.view.frame.width - 80, 100)
            
            UIView.animateWithDuration(1.0, animations: {
                point1.transform = CGAffineTransformTranslate(point5.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.0
                scaleAnimation.toValue = 1.5
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point5.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }

        let point6 = UIView()
        point6.layer.position = CGPointMake(self.view.frame.width * 0.5, 210)
        point6.layer.bounds = CGRectMake(0, 0, 5, 5)
        point6.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point6)
        
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            point6.frame.origin.x = self.view.frame.width * 0.5
            point6.frame.origin.y = 20
            point6.center = CGPointMake(self.view.frame.width - 100, 50)
            
            UIView.animateWithDuration(1.0, animations: {
                point1.transform = CGAffineTransformTranslate(point6.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0.7
                scaleAnimation.toValue = 1.2
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point6.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }

        
        
        
//        // 下雨暂时考虑动画
//        let pointCell = CAEmitterCell()
//        pointCell.name = "point"
//        pointCell.birthRate = 2.0
//        pointCell.lifetime = 10.0
//        pointCell.velocity = 20.0
//        pointCell.velocityRange = 10
//        pointCell.yAcceleration = 2
//        pointCell.alphaSpeed = 10
//        pointCell.minificationFilterBias = 5.0
//        //        pointCell.duration = 10.0
//        pointCell.emissionRange = CGFloat(0.75 * M_PI)
//        pointCell.spinRange = CGFloat(0.25 * M_PI)
//        
//        
//        pointCell.contents = UIImage(named: "point")!.CGImage
//        //        pointCell.color = UIColor.init(red: 200, green: 258, blue: 543, alpha: 1.0).CGColor
//        
//        //        pointEmitter.shadowOpacity = 1.0
//        pointEmitter.cornerRadius = 50.0
//        //        pointCell.enabled = false
//        //        pointEmitter.shadowOffset = CGSizeMake(0.0, 1.0)
//        //        pointEmitter.shadowColor = UIColor.redColor().CGColor
//        pointEmitter.emitterCells = [pointCell]
//        
//        self.view.layer.insertSublayer(pointEmitter, atIndex: 0)
        
        //        pointCell.kCAEmitterLayerOldestLast

    }
    
    /**
     cloudy
     */
    func cloudy() {
//        viewAnimation.layer.position = CGPointMake(10, -10)
//        viewAnimation.layer.bounds = CGRectMake(0, 0, 300, 156)
//        viewAnimation.backgroundColor = UIColor.init(patternImage: UIImage(named: "大云")!)
//        self.view.addSubview(viewAnimation)
//        
//        let anim = CABasicAnimation(keyPath: "position")
//        anim.duration = 2
//        let fromV = NSValue(CGPoint: CGPointMake(50, 80))
//        anim.fromValue = fromV
//        let toV = NSValue(CGPoint: CGPointMake(200, 80))
//        anim.toValue = toV
//        anim.delegate = self
//        anim.removedOnCompletion = false
//        anim.fillMode = kCAFillModeForwards
//        viewAnimation.layer.addAnimation(anim, forKey: "translate")
        
        //创建方块
        viewAnimation.layer.position = CGPointMake(100, -10)
        viewAnimation.layer.bounds = CGRectMake(0, 0, 300, 156)
        viewAnimation.backgroundColor = UIColor.init(patternImage: UIImage(named: "大云")!)
        self.view.addSubview(viewAnimation)
        
        leftCloudy.layer.position = CGPointMake(150, 80)
        leftCloudy.layer.bounds = CGRectMake(0, 0, 60, 33)
        leftCloudy.backgroundColor = UIColor.init(patternImage: UIImage(named: "左侧云彩")!)
        self.view.addSubview(leftCloudy)
        
        rightCloudy.layer.position = CGPointMake(300, 30)
        rightCloudy.layer.bounds = CGRectMake(0, 0, 40, 22)
        rightCloudy.backgroundColor = UIColor.init(patternImage: UIImage(named: "右侧云彩")!)
        self.view.addSubview(rightCloudy)
        
        
        point.layer.position = CGPointMake(self.view.frame.width * 0.5, 150)
        point.layer.bounds = CGRectMake(0, 0, 10, 10)
        point.backgroundColor = UIColor.init(patternImage: UIImage(named: "圆点")!)
        self.view.addSubview(point)

        point1.layer.position = CGPointMake(self.view.frame.width * 0.5, 150)
        point1.layer.bounds = CGRectMake(0, 0, 10, 10)
        point1.backgroundColor = UIColor.init(patternImage: UIImage(named: "圆点")!)
        self.view.addSubview(point1)

        point2.layer.position = CGPointMake(self.view.frame.width * 0.5, 150)
        point2.layer.bounds = CGRectMake(0, 0, 10, 10)
        point2.backgroundColor = UIColor.init(patternImage: UIImage(named: "圆点")!)
        self.view.addSubview(point2)

        point3.layer.position = CGPointMake(self.view.frame.width * 0.5, 150)
        point3.layer.bounds = CGRectMake(0, 0, 10, 10)
        point3.backgroundColor = UIColor.init(patternImage: UIImage(named: "圆点")!)
        self.view.addSubview(point3)


        
        //播放动画
        playAnimation()
        
    }
    
}

extension ViewController {
    //播放动画
    func playAnimation()
    {
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .Autoreverse, .CurveEaseOut],
                                   animations: {
                                    self.viewAnimation.frame.origin.x = 0
            },
                                   completion: nil)
        
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            self.leftCloudy.frame.origin.x = 0
            self.leftCloudy.center = CGPointMake(220, 80);
            self.leftCloudy.transform = CGAffineTransformRotate(CGAffineTransformScale(self.leftCloudy.transform, 1, 1), 0)
            self.leftCloudy.alpha = 0.0
            
            }, completion: nil)
        
        UIView.animateWithDuration(3.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            self.rightCloudy.frame.origin.x = 300
            self.rightCloudy.center = CGPointMake(220, 30)
            self.rightCloudy.transform = CGAffineTransformRotate(CGAffineTransformScale(self.rightCloudy.transform, 1, 1), 0)
            self.rightCloudy.alpha = 0.0
            
        },completion: nil)
        
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            self.point.center = CGPointMake(10, 100)

            UIView.animateWithDuration(1.0, animations: { 
                self.point.transform = CGAffineTransformTranslate(self.point.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.0
                scaleAnimation.toValue = 0.6
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                self.point.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
            }) { (true) in
                
        }
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            self.point1.center = CGPointMake(20, 200)
            
            UIView.animateWithDuration(1.0, animations: {
                self.point1.transform = CGAffineTransformTranslate(self.point1.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0.6
                scaleAnimation.toValue = 0.3
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                self.point1.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            self.point2.center = CGPointMake(self.view.frame.width - 15, 120)
            
            UIView.animateWithDuration(1.0, animations: {
                self.point2.transform = CGAffineTransformTranslate(self.point2.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.0
                scaleAnimation.toValue = 0.6
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                self.point2.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        UIView.animateWithDuration(5.0, delay: 0.0, options: [.Repeat, .CurveEaseOut], animations: {
            self.point3.center = CGPointMake(self.view.frame.width - 20, 150)
            
            UIView.animateWithDuration(1.0, animations: {
                self.point3.transform = CGAffineTransformTranslate(self.point3.transform, 0, 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0.5
                scaleAnimation.toValue = 0.3
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                self.point3.layer.addAnimation(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        
    }

    
}

extension ViewController {
    
    /**
     snow
     */
    func snow() {
        let pointEmitter = CAEmitterLayer()
        pointEmitter.emitterPosition = CGPointMake(120, -120)
        
        
        pointEmitter.emitterSize = CGSizeMake(self.view.frame.width, 0)
        pointEmitter.emitterMode = kCAEmitterLayerSurface
        pointEmitter.emitterShape = kCAEmitterLayerOldestLast
        
        // 下雨暂时考虑动画
        let snow1Cell = CAEmitterCell()
        snow1Cell.name = "point"
        snow1Cell.birthRate = 1
        snow1Cell.lifetime = 6.0
        snow1Cell.velocity = 40.0
        snow1Cell.velocityRange = 10
        snow1Cell.yAcceleration = 2
        snow1Cell.alphaSpeed = 30
        snow1Cell.minificationFilterBias = 5.0
        snow1Cell.emissionRange = CGFloat(M_PI)
        snow1Cell.spinRange = CGFloat(M_PI)
        snow1Cell.contents = UIImage(named: "snow1")!.CGImage
        
        let snow2Cell = CAEmitterCell()
        snow2Cell.name = "point"
        snow2Cell.birthRate = 1
        snow2Cell.lifetime = 5.0
        snow2Cell.velocity = 40.0
        snow2Cell.velocityRange = 10
        snow2Cell.yAcceleration = 2
        snow2Cell.alphaSpeed = 30
        snow2Cell.minificationFilterBias = 5.0
        snow2Cell.emissionRange = CGFloat(M_PI)
        snow2Cell.spinRange = CGFloat(M_PI)
        snow2Cell.contents = UIImage(named: "snow2")!.CGImage
        
        let snow3Cell = CAEmitterCell()
        snow3Cell.name = "point"
        snow3Cell.birthRate = 1
        snow3Cell.lifetime = 5.0
        snow3Cell.velocity = 40.0
        snow3Cell.velocityRange = 10
        snow3Cell.yAcceleration = 2
        snow3Cell.alphaSpeed = 30
        snow3Cell.minificationFilterBias = 5.0
        snow3Cell.emissionRange = CGFloat(M_PI)
        snow3Cell.spinRange = CGFloat(M_PI)
        snow3Cell.contents = UIImage(named: "snow3")!.CGImage
        
        let snow4Cell = CAEmitterCell()
        snow4Cell.name = "point"
        snow4Cell.birthRate = 1
        snow4Cell.lifetime = 5.0
        snow4Cell.velocity = 40.0
        snow4Cell.velocityRange = 10
        snow4Cell.yAcceleration = 2
        snow4Cell.alphaSpeed = 30
        snow4Cell.minificationFilterBias = 5.0
        snow4Cell.emissionRange = CGFloat(M_PI)
        snow4Cell.spinRange = CGFloat(M_PI)
        snow4Cell.contents = UIImage(named: "snow4")!.CGImage

        pointEmitter.emitterCells = [snow1Cell,snow2Cell,snow3Cell,snow4Cell]
        
        self.view.layer.insertSublayer(pointEmitter, atIndex: 0)
    }
    
    
}

extension ViewController {
    
    //rainy
    func rain() {
        let rainEmitter = CAEmitterLayer()
        rainEmitter.emitterPosition = CGPointMake(self.view.frame.width + 200, -110)
        rainEmitter.emitterSize = CGSizeMake(10, 10)
        rainEmitter.emitterMode = kCAEmitterLayerSurface
        rainEmitter.emitterShape = kCAEmitterLayerOldestLast

        
        let rain1Cell = CAEmitterCell()
        rain1Cell.name = "point"
        rain1Cell.birthRate = 2
        rain1Cell.lifetime = 1
        rain1Cell.velocity = 100.0
        rain1Cell.velocityRange = 40
        rain1Cell.xAcceleration = -100
        rain1Cell.yAcceleration = 350
        rain1Cell.alphaSpeed = 2
        rain1Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain1Cell.contents = UIImage(named: "rain")!.CGImage
        
        let rain2Cell = CAEmitterCell()
        rain2Cell.name = "point"
        rain2Cell.birthRate = 2
        rain2Cell.lifetime = 1
        rain2Cell.velocity = 200.0
        rain2Cell.velocityRange = 40
        rain2Cell.xAcceleration = -100
        rain2Cell.yAcceleration = 350
        rain2Cell.alphaSpeed = 2
        rain2Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain2Cell.contents = UIImage(named: "rain2")!.CGImage

        
        let rain3Cell = CAEmitterCell()
        rain3Cell.name = "point"
        rain3Cell.beginTime = 3.0
        rain3Cell.birthRate = 4
        rain3Cell.lifetime = 1
        rain3Cell.velocity = 300.0
        rain3Cell.velocityRange = 40
        rain3Cell.xAcceleration = -100
        rain3Cell.yAcceleration = 350
        rain3Cell.alphaSpeed = 2
        rain3Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain3Cell.contents = UIImage(named: "rain3")!.CGImage

        
        let rain4Cell = CAEmitterCell()
        rain4Cell.name = "point"
        rain4Cell.birthRate = 5
        rain4Cell.lifetime = 1
        rain4Cell.velocity = 400.0
        rain4Cell.velocityRange = 40
        rain4Cell.xAcceleration = -100
        rain4Cell.yAcceleration = 350
        rain4Cell.alphaSpeed = 2
        rain4Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain4Cell.contents = UIImage(named: "rain4")!.CGImage

        
        let rain5Cell = CAEmitterCell()
        rain5Cell.name = "point"
        rain5Cell.birthRate = 6
        rain5Cell.lifetime = 1
        rain5Cell.velocity = 500.0
        rain5Cell.velocityRange = 40
        rain5Cell.xAcceleration = -100
        rain5Cell.yAcceleration = 350
        rain5Cell.alphaSpeed = 2
        rain5Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain5Cell.contents = UIImage(named: "rain5")!.CGImage

        

        
        rainEmitter.emitterCells = [rain1Cell,rain2Cell,rain3Cell,rain4Cell,rain5Cell]
        self.view.layer.insertSublayer(rainEmitter, atIndex: 0)
    }
}
