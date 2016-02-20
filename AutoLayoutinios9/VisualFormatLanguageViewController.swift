//
//  VisualFormatLanguageViewController.swift
//  AutoLayoutinios9
//
//  Created by satoutakeshi on 2016/02/20.
//  Copyright © 2016年 satoutakeshi. All rights reserved.
//

import UIKit

class VisualFormatLanguageViewController: UIViewController {

    let redView     = UIView(frame: CGRectZero)
    let blueView    = UIView(frame: CGRectZero)
    let yellowView  = UIView(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //赤ビューを追加
        redView.backgroundColor = UIColor.redColor()
        //Autoresizingを解除する
        redView.translatesAutoresizingMaskIntoConstraints = false
        //ビューを親ビューに追加
        self.view.addSubview(redView)
        
        blueView.backgroundColor = UIColor.blueColor()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(blueView)
        
        yellowView.backgroundColor = UIColor.yellowColor()
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(yellowView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidLayoutSubviews() {
        let views = [
            "redView"       : redView,
            "yellowView"    : yellowView
        ]
        
        
        let metrics = ["width": self.view.frame.width * 0.4]
        
        //赤色ビューの垂直方向の制約
        let redViewVerticalConstrains =
        NSLayoutConstraint.constraintsWithVisualFormat("V:|-88-[redView]-10-|",
            options: NSLayoutFormatOptions(rawValue: 0),
            metrics: nil,
            views: views)
        
        //黄色ビューの垂直方向の制約
        let yellowViewVerticalConstrains =
        NSLayoutConstraint.constraintsWithVisualFormat("V:|-88-[yellowView]-10-|",
            options: NSLayoutFormatOptions(rawValue: 0),
            metrics: nil,
            views: views)
        
        //赤色ビューの水平方向の制約
        let redViewHorizonConstrains = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[redView(width)]",
            options: NSLayoutFormatOptions(rawValue: 0),
            metrics: metrics,
            views: views)
        
        //黄色ビューの水平方向の制約
        let yellowViewHorizonConstrains = NSLayoutConstraint.constraintsWithVisualFormat("H:[yellowView(==redView)]-20-|",
            options: NSLayoutFormatOptions(rawValue: 0),
            metrics: nil,
            views: views)
        
        //制約の設定
        self.view.addConstraints(redViewVerticalConstrains
            + yellowViewVerticalConstrains
            + redViewHorizonConstrains
            + yellowViewHorizonConstrains)
        
        
        super.viewDidLayoutSubviews()
        
    }

}
