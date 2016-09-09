//
//  MainTabBar.swift
//  AskProject
//
//  Created by bjike on 16/9/5.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit


class MainTabBar: UITabBarController {

    var userLogin = false

    override func viewDidLoad() {
        super.viewDidLoad()
        

        //2.移除线
        moveTabBarLine()
        //3.设置背景图
        setTabBarBackImage()
        
        
        
        
    }
    
 
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
      //1.设置tabBar上的按钮
        tabBar.addSubview(composeButton)
        
        // 保存按钮尺寸
        let rect = composeButton.frame
        // 计算宽度
        let width = tabBar.bounds.width / CGFloat(childViewControllers.count)
        // 设置按钮的位置
        composeButton.frame = CGRect(x:  width, y: -20, width: width, height: rect.height)
        
       

    }
    //设置tabBar的背景图片
   private func setTabBarBackImage(){
        
        let imageView = UIImageView.init(frame: CGRectMake(0, 0, ScreenWidth(), TabBarHeight()))
        
        imageView.image = UIImage(named: "tabBarBackImage")
        
        tabBar.insertSubview(imageView, atIndex: 0)
        
        
    }
    //移除tabBar的线条
  private  func moveTabBarLine(){
        
        let rect = CGRectMake(0, 0, ScreenWidth(), TabBarHeight())
        
        UIGraphicsBeginImageContext(rect.size)
        
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSetFillColorWithColor(context, UIColor.clearColor().CGColor)
        
        CGContextFillRect(context, rect)
        
        let img = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        tabBar.backgroundImage = img
        
        tabBar.shadowImage = img
        
    }
    
    
   private func ScreenWidth()->CGFloat{
        
        return tabBar.bounds.width
        
    }
   private func TabBarHeight()->CGFloat{
        
        return tabBar.bounds.height
        
    }
   
    // MARK: - 内部控制方法
    /// 监听加号按钮点击
    @objc private func compseBtnClick(btn: UIButton)
    {
       print(#function)
        
    }
    // MARK: - 懒加载
    private lazy var composeButton: UIButton = {
        () -> UIButton
        in
        // 1.创建按钮
        let btn = UIButton(imageName: "tab_post")
        
        // 2.监听按钮点击
        btn.addTarget(self, action: #selector(MainTabBar.compseBtnClick(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        return btn
    }()

}
