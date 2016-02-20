//
//  NSConstraintsViewController.swift
//  AutoLayoutinios9
//
//  Created by satoutakeshi on 2016/02/20.
//  Copyright © 2016年 satoutakeshi. All rights reserved.
//

import UIKit

class NSConstraintsViewController: UIViewController {

    let redView     = UIView(frame: CGRectZero)
    let yellowView  = UIView(frame: CGRectZero)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //赤ビューを追加
        redView.backgroundColor = UIColor.redColor()
        //Autoresizingを解除する
        redView.translatesAutoresizingMaskIntoConstraints = false
        //ビューを親ビューに追加
        self.view.addSubview(redView)
        
        yellowView.backgroundColor = UIColor.yellowColor()
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(yellowView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        /*
        隣接制約
        */
        
        //赤色ビューのトップの制約を追加
        let redViewTopConstraint = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 88)
        self.view.addConstraint(redViewTopConstraint)
        
        //赤色ビューの左側制約追加
        let redViewLeadingConstraint = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.LeadingMargin,
            multiplier: 1.0,
            constant: 0)
        self.view.addConstraint(redViewLeadingConstraint)
        
        //赤色ビューの下部の制約追加
        let redViewBottonConstraint = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -10)
        self.view.addConstraint(redViewBottonConstraint)
        
        
        //赤色ビューの幅を追加。親ビューの40%にする
        let redViewWidthConstraint = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.4,
            constant: 0)
        self.view.addConstraint(redViewWidthConstraint)
        
        //黄色ビューのトップの制約
        let yellowTopConstraint = NSLayoutConstraint(item: yellowView,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 88)
        self.view.addConstraint(yellowTopConstraint)
        
        //黄色ビューの右側の制約
        let yellowTrailingConstraint = NSLayoutConstraint(item: yellowView, attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.TrailingMargin,
            multiplier: 1.0,
            constant: 0)
        self.view.addConstraint(yellowTrailingConstraint)
        
        //黄色ビューの幅は赤色ビューと同じ
        let yellowWidthConstraint = NSLayoutConstraint(item: yellowView,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: redView,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1.0,
            constant: 0)
        self.view.addConstraint(yellowWidthConstraint)
        
        //黄色ビューの下部の制約
        let yellowBottonConstraint = NSLayoutConstraint(item: yellowView,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -10)
        self.view.addConstraint(yellowBottonConstraint)
        
        super.viewDidLayoutSubviews()
        
    }
    
}
