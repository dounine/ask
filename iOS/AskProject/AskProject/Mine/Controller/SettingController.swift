//
//  SettingController.swift
//  AskProject
//
//  Created by bjike on 16/9/8.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class SettingController: UIViewController{
    
    @IBOutlet weak var onSwitchMsg: UISwitch!
    
override func viewWillAppear(animated: Bool) {
    
    super.viewWillAppear(animated)
    //1.移除nav的线，并设置背景图
    
    moveNavBarLine()
    
    //2.隐藏标签栏
    
    tabBarController?.tabBar.hidden = true
    
}
//    override func viewWillDisappear(animated: Bool) {
//        
//        tabBarController?.tabBar.hidden = false
//
//    }
    //移除NavBar的线条
    private  func moveNavBarLine(){
        
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "navigitionBar"), forBarMetrics: UIBarMetrics.Default)
        
        navigationController?.navigationBar.shadowImage = UIImage.init()
        
    }
    
    @IBAction func backClicked(sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    @IBAction func notifacationClicked(sender: AnyObject) {
    }
    
    @IBAction func pushMessageClicked(sender: AnyObject) {
    }
    
    @IBAction func logoutClicked(sender: AnyObject) {
    }
    
    @IBAction func onOrOffClicked(sender: AnyObject) {
        
        
    }
    
    
}