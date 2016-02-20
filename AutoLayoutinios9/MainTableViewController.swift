//
//  ViewController.swift
//  AutoLayoutinios9
//
//  Created by satoutakeshi on 2016/02/19.
//  Copyright © 2016年 satoutakeshi. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    let listStroyboard = [
        "OldAutoLayout" : "[storyboard]今までのAuto Layout" ,
        "NSConstraints" : "コードでレイアウト(NSConstraints)",
        "StackView" : "[storyboard]StackViewを使ったAuto Layout",
        "VisualFormatLanguage" : "コードでレイアウト(VFL)",
        "Anchors" : "コードでレイアウト(Anchors)"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //ストーリーボードの要素数を返す
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listStroyboard.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let listKeys = Array(listStroyboard.keys)
        
        let cell = tableView.dequeueReusableCellWithIdentifier("storyboardlist", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel!.text =   listStroyboard[listKeys[indexPath.row]]
        return cell
        

    }
    
    // セルを選択したときのアクション
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
        //選択解除
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        let listKeys = Array(listStroyboard.keys)
        let pushStoryboard: UIStoryboard = UIStoryboard(name: listKeys[indexPath.row], bundle: NSBundle.mainBundle())        
        let secondViewController = pushStoryboard.instantiateInitialViewController()
        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }
}

