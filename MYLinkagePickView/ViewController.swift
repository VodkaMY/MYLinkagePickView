//
//  ViewController.swift
//  MYLinkagePickView
//
//  Created by MaoYan on 2017/9/15.
//  Copyright © 2017年 MaoYan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //所以地址数据集合
    fileprivate var addressArr = [[String: AnyObject]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初始化数据
        let path = Bundle.main.path(forResource: "address", ofType:"plist")
        self.addressArr = NSArray(contentsOfFile: path!) as! Array
        
        let pickV = SdLinkagePickViewCtr(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: 300), addressArr: self.addressArr as NSArray, rowC: 3)
        self.view.addSubview(pickV)
    }


}

