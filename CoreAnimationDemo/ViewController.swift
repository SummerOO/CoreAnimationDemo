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
        imageLayer1.contents = UIImage(named: "内环")!.cgImage
        imageLayer1.frame = CGRect(x: 0, y: -self.view.frame.width * 0.90, width: self.view.frame.width, height: self.view.frame.width)
        view.layer.insertSublayer(imageLayer1, above: view.layer)
        let anim1 = CAKeyframeAnimation(keyPath: "transform.rotation")
        anim1.duration = 50.0
        anim1.repeatCount = MAXFLOAT
        anim1.values = [CGPoint(x: -100.0, y: 0.0),
            CGPoint(x: view.frame.width + 120.0, y: 100.0),
            CGPoint(x: -100.0, y: 0)]
            .map{NSValue(cgPoint: $0)}
        anim1.keyTimes = [0.0, 50.0]
        imageLayer1.add(anim1, forKey: nil)
        
        let imageLayer2 = CALayer()
        imageLayer2.contents = UIImage(named: "中环")!.cgImage
        imageLayer2.frame = CGRect(x: 20, y: -self.view.frame.width * 0.85, width: self.view.frame.width, height: self.view.frame.width)
        view.layer.insertSublayer(imageLayer2, above: view.layer)
        let anim2 = CAKeyframeAnimation(keyPath: "transform.rotation")
        anim2.duration = 80.0
        anim2.repeatCount = MAXFLOAT
        anim2.values = [CGPoint(x: 0.0, y: 0.0),
            CGPoint(x: -view.frame.width - 120.0, y: 100.0),
            CGPoint(x:  0.0, y: 0)]
            .map{NSValue(cgPoint: $0)}
        anim2.keyTimes = [0.0, 50.0]
        imageLayer2.add(anim2, forKey: nil)
        
        let imageLayer3 = CALayer()
        imageLayer3.contents = UIImage(named: "外环")!.cgImage
        imageLayer3.frame = CGRect(x: 0, y: -self.view.frame.width * 0.80, width: self.view.frame.width, height: self.view.frame.width)
        view.layer.insertSublayer(imageLayer3, above: view.layer)
        let anim3 = CAKeyframeAnimation(keyPath: "transform.rotation")
        anim3.duration = 80.0
        anim3.repeatCount = MAXFLOAT
        anim3.values = [CGPoint(x: -100.0, y: 0.0),
            CGPoint(x: view.frame.width + 120.0, y: 100.0),
            CGPoint(x: -100.0, y: 0)]
            .map{NSValue(cgPoint: $0)}
        anim3.keyTimes = [0.0, 50.0]
        imageLayer3.add(anim3, forKey: nil)
        
        let pointEmitter = CAEmitterLayer()
        pointEmitter.emitterPosition = CGPoint(x: 120, y: -120)
        
        
        pointEmitter.emitterSize = CGSize(width: 20, height: 20)
        pointEmitter.emitterMode = kCAEmitterLayerSurface
        pointEmitter.emitterShape = kCAEmitterLayerOldestLast
        //        pointEmitter.lifetime = 5
        
        
        let point1 = UIView()
        point1.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 210)
        point1.layer.bounds = CGRect(x: 0, y: 0, width: 5, height: 5)
        point1.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point1)
        
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            point1.frame.origin.x = self.view.frame.width * 0.5
            point1.frame.origin.y = 20
            point1.center = CGPoint(x: 10, y: 70)
            
            UIView.animate(withDuration: 1.0, animations: {
                point1.transform = point1.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.5
                scaleAnimation.toValue = 2.0
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point1.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        let point2 = UIView()
        point2.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 210)
        point2.layer.bounds = CGRect(x: 0, y: 0, width: 5, height: 5)
        point2.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point2)
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            point2.frame.origin.x = self.view.frame.width * 0.5
            point2.frame.origin.y = 20
            point2.center = CGPoint(x: 80, y: 100)
            
            UIView.animate(withDuration: 1.0, animations: {
                point2.transform = point2.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.0
                scaleAnimation.toValue = 1.5
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point2.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        let point3 = UIView()
        point3.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 210)
        point3.layer.bounds = CGRect(x: 0, y: 0, width: 5, height: 5)
        point3.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point3)
        
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            point3.frame.origin.x = self.view.frame.width * 0.5
            point3.frame.origin.y = 20
            point3.center = CGPoint(x: 100, y: 50)
            
            UIView.animate(withDuration: 1.0, animations: {
                point1.transform = point3.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0.7
                scaleAnimation.toValue = 1.2
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point3.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        let point4 = UIView()
        point4.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 210)
        point4.layer.bounds = CGRect(x: 0, y: 0, width: 5, height: 5)
        point4.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point4)
        
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            point4.frame.origin.x = self.view.frame.width * 0.5
            point4.frame.origin.y = 20
            point4.center = CGPoint(x: self.view.frame.width - 10, y: 70)
            
            UIView.animate(withDuration: 1.0, animations: {
                point1.transform = point4.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.5
                scaleAnimation.toValue = 2.0
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point4.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }

        let point5 = UIView()
        point5.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 210)
        point5.layer.bounds = CGRect(x: 0, y: 0, width: 5, height: 5)
        point5.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point5)
        
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            point5.frame.origin.x = self.view.frame.width * 0.5
            point5.frame.origin.y = 20
            point5.center = CGPoint(x: self.view.frame.width - 80, y: 100)
            
            UIView.animate(withDuration: 1.0, animations: {
                point1.transform = point5.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.0
                scaleAnimation.toValue = 1.5
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point5.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }

        let point6 = UIView()
        point6.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 210)
        point6.layer.bounds = CGRect(x: 0, y: 0, width: 5, height: 5)
        point6.backgroundColor = UIColor.init(patternImage: UIImage(named: "point")!)
        self.view.addSubview(point6)
        
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            point6.frame.origin.x = self.view.frame.width * 0.5
            point6.frame.origin.y = 20
            point6.center = CGPoint(x: self.view.frame.width - 100, y: 50)
            
            UIView.animate(withDuration: 1.0, animations: {
                point1.transform = point6.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0.7
                scaleAnimation.toValue = 1.2
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                point6.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }


    }
    
    /**
     cloudy
     */
    func cloudy() {
        // 创建云块
        viewAnimation.layer.position = CGPoint(x: 100, y: -10)
        viewAnimation.layer.bounds = CGRect(x: 0, y: 0, width: 279, height: 145)
        viewAnimation.backgroundColor = UIColor.init(patternImage: UIImage(named: "大云")!)
        self.view.addSubview(viewAnimation)
        
        leftCloudy.layer.position = CGPoint(x: 150, y: 80)
        leftCloudy.layer.bounds = CGRect(x: 0, y: 0, width: 61, height: 33)
        leftCloudy.backgroundColor = UIColor.init(patternImage: UIImage(named: "左侧云彩")!)
        self.view.addSubview(leftCloudy)
        
        rightCloudy.layer.position = CGPoint(x: 300, y: 30)
        rightCloudy.layer.bounds = CGRect(x: 0, y: 0, width: 33, height: 19)
        rightCloudy.backgroundColor = UIColor.init(patternImage: UIImage(named: "右侧云彩")!)
        self.view.addSubview(rightCloudy)
        
        point.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 100)
        point.layer.bounds = CGRect(x: 0, y: 0, width: 9, height: 9)
        point.backgroundColor = UIColor.init(patternImage: UIImage(named: "圆点")!)
        self.view.addSubview(point)
        
        point1.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 100)
        point1.layer.bounds = CGRect(x: 0, y: 0, width: 9, height: 9)
        point1.backgroundColor = UIColor.init(patternImage: UIImage(named: "圆点")!)
        self.view.addSubview(point1)
        
        point2.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 100)
        point2.layer.bounds = CGRect(x: 0, y: 0, width: 9, height: 9)
        point2.backgroundColor = UIColor.init(patternImage: UIImage(named: "圆点")!)
        self.view.addSubview(point2)
        
        point3.layer.position = CGPoint(x: self.view.frame.width * 0.5, y: 100)
        point3.layer.bounds = CGRect(x: 0, y: 0, width: 9, height: 9)
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
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .autoreverse, .curveEaseOut],
                                   animations: {
                                    self.viewAnimation.frame.origin.x = 0
            },
                                   completion: nil)
        
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            self.leftCloudy.frame.origin.x = 0
            self.leftCloudy.center = CGPoint(x: 220, y: 80);
            self.leftCloudy.transform = self.leftCloudy.transform.scaledBy(x: 1, y: 1).rotated(by: 0)
            self.leftCloudy.alpha = 0.0
            
            }, completion: nil)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            self.rightCloudy.frame.origin.x = 300
            self.rightCloudy.center = CGPoint(x: 220, y: 30)
            self.rightCloudy.transform = self.rightCloudy.transform.scaledBy(x: 1, y: 1).rotated(by: 0)
            self.rightCloudy.alpha = 0.0
            
        },completion: nil)
        
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            self.point.center = CGPoint(x: 10, y: 100)

            UIView.animate(withDuration: 1.0, animations: { 
                self.point.transform = self.point.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.0
                scaleAnimation.toValue = 0.6
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                self.point.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
            }) { (true) in
                
        }
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            self.point1.center = CGPoint(x: 20, y: 200)
            
            UIView.animate(withDuration: 1.0, animations: {
                self.point1.transform = self.point1.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0.6
                scaleAnimation.toValue = 0.3
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                self.point1.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            self.point2.center = CGPoint(x: self.view.frame.width - 15, y: 120)
            
            UIView.animate(withDuration: 1.0, animations: {
                self.point2.transform = self.point2.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 1.0
                scaleAnimation.toValue = 0.6
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                self.point2.layer.add(scaleAnimation, forKey: "scaleAnimation")
            })
            
            
        }) { (true) in
            
        }
        
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat, .curveEaseOut], animations: {
            self.point3.center = CGPoint(x: self.view.frame.width - 20, y: 150)
            
            UIView.animate(withDuration: 1.0, animations: {
                self.point3.transform = self.point3.transform.translatedBy(x: 0, y: 0)
                let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
                scaleAnimation.fromValue = 0.5
                scaleAnimation.toValue = 0.3
                scaleAnimation.autoreverses = true
                scaleAnimation.fillMode = kCAFillModeForwards
                scaleAnimation.repeatCount = MAXFLOAT
                scaleAnimation.duration = 0.8
                self.point3.layer.add(scaleAnimation, forKey: "scaleAnimation")
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
        pointEmitter.emitterPosition = CGPoint(x: 120, y: -120)
                pointEmitter.emitterSize = CGSize(width: self.view.frame.width, height: 0)
        pointEmitter.emitterMode = kCAEmitterLayerSurface
        pointEmitter.emitterShape = kCAEmitterLayerOldestLast
        
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
        snow1Cell.contents = UIImage(named: "snow1")!.cgImage
        
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
        snow2Cell.contents = UIImage(named: "snow2")!.cgImage
        
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
        snow3Cell.contents = UIImage(named: "snow3")!.cgImage
        
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
        snow4Cell.contents = UIImage(named: "snow4")!.cgImage
        
        pointEmitter.emitterCells = [snow1Cell,snow2Cell,snow3Cell,snow4Cell]
        
        self.view.layer.insertSublayer(pointEmitter, at: 0)
    }
    
    
}

extension ViewController {
    
    //rainy
    func rain() {
        let rainEmitter = CAEmitterLayer()
        rainEmitter.emitterPosition = CGPoint(x: self.view.frame.width, y: -100)
        rainEmitter.emitterSize = CGSize(width: 10, height: 10)
        rainEmitter.emitterMode = kCAEmitterLayerSurface
        rainEmitter.emitterShape = kCAEmitterLayerOldestLast
        
        
        let rain1Cell = CAEmitterCell()
        rain1Cell.name = "point"
        rain1Cell.birthRate = 0.7
        rain1Cell.lifetime = 2.0
        rain1Cell.velocity = 50.0
        rain1Cell.velocityRange = 40
        rain1Cell.xAcceleration = -50
        rain1Cell.yAcceleration = 100
        rain1Cell.alphaSpeed = 2
        rain1Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain1Cell.contents = UIImage(named: "rain")!.cgImage
        
        let rain2Cell = CAEmitterCell()
        rain2Cell.name = "point"
        rain2Cell.birthRate = 0.78
        rain2Cell.lifetime = 2.0
        rain2Cell.velocity = 10.0
        rain2Cell.velocityRange = 40
        rain2Cell.xAcceleration = -50
        rain2Cell.yAcceleration = 100
        rain2Cell.alphaSpeed = 2
        rain2Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain2Cell.contents = UIImage(named: "rain2")!.cgImage
        
        
        let rain3Cell = CAEmitterCell()
        rain3Cell.name = "point"
        rain3Cell.beginTime = 3.0
        rain3Cell.birthRate = 0.5
        rain3Cell.lifetime = 2.0
        rain3Cell.velocity = 80.0
        rain3Cell.velocityRange = 40
        rain3Cell.xAcceleration = -50
        rain3Cell.yAcceleration = 100
        rain3Cell.alphaSpeed = 2
        rain3Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain3Cell.contents = UIImage(named: "rain3")!.cgImage
        
        
        let rain4Cell = CAEmitterCell()
        rain4Cell.name = "point"
        rain4Cell.birthRate = 0.5
        rain4Cell.lifetime = 2.0
        rain4Cell.velocity = 90.0
        rain4Cell.velocityRange = 40
        rain4Cell.xAcceleration = -50
        rain4Cell.yAcceleration = 100
        rain4Cell.alphaSpeed = 2
        rain4Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain4Cell.contents = UIImage(named: "rain4")!.cgImage
        
        
        let rain5Cell = CAEmitterCell()
        rain5Cell.name = "point"
        rain5Cell.birthRate = 0.5
        rain5Cell.lifetime = 2.0
        rain5Cell.velocity = 60.0
        rain5Cell.velocityRange = 40
        rain5Cell.xAcceleration = -50
        rain5Cell.yAcceleration = 100
        rain5Cell.alphaSpeed = 2
        rain5Cell.emissionLatitude = CGFloat(-3 * M_PI)
        rain5Cell.contents = UIImage(named: "rain5")!.cgImage
        rainEmitter.emitterCells = [rain1Cell,rain2Cell,rain3Cell,rain4Cell,rain5Cell]
        self.view.layer.insertSublayer(rainEmitter, at: 0)
    }
}
