//
//  AnchorsViewController.swift
//  AutoLayoutinios9
//
//  Created by satoutakeshi on 2016/02/20.
//  Copyright © 2016年 satoutakeshi. All rights reserved.
//

import UIKit

class AnchorsViewController: UIViewController {

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
    
        //親ビューのレイアウトを取得
        let superViewLayout = self.view.layoutMarginsGuide
        
        //赤いビューのトップの制約を追加
        redView.topAnchor.constraintEqualToAnchor(superViewLayout.topAnchor, constant: 88).active = true
        
        //赤いビューの左側制約を追加
        redView.leadingAnchor.constraintEqualToAnchor(superViewLayout.leadingAnchor).active = true
        
        //赤いビューの下部の制約を追加
        redView.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: -10).active = true
        
        //赤いビューは親ビューの幅の40%の幅を指定
        redView.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.4).active = true
        
        //黄色ビューの上部の制約を追加
        yellowView.topAnchor.constraintEqualToAnchor(superViewLayout.topAnchor, constant: 88).active = true
        
        //黄色ビューの右側の制約を追加
        yellowView.trailingAnchor.constraintEqualToAnchor(superViewLayout.trailingAnchor).active = true
        
        //黄色ビューの下側の制約を追加
        yellowView.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor, constant: -10).active = true
        
        //黄色ビューの幅は赤色ビューと同じ
        yellowView.widthAnchor.constraintEqualToAnchor(redView.widthAnchor).active = true
        
        super.viewDidLayoutSubviews()
    }

}
