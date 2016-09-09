//
//  CommonFile.swift
//  AskProject
//
//  Created by bjike on 16/9/6.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

func RGB(rgbValue: Int)-> UIColor{
    
    return UIColor (red: ((CGFloat)((rgbValue & 0xFF0000) >> 16))/255.0,green:((CGFloat)((rgbValue & 0xFF00) >> 8))/255.0 ,blue:((CGFloat)(rgbValue & 0xFF))/255.0, alpha:1.0)
    
}
func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat)-> UIColor{
    
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    
}

func ScreenWidth() ->CGFloat{
    
    
    return UIScreen.mainScreen().bounds.width
    
}
func ScreenHeight() ->CGFloat{
    
    
    return UIScreen.mainScreen().bounds.height
    
}

func iPhone4() -> Bool{
    
    return false
//    return UIScreen.instancesRespondToSelector(UIScreenMode)?;CGSizeEqualToSize(CGSizeMake(640, 1136),UIScreen.mainScreen().currentMode?.size); : false)
    
}

func iPhone5() -> Bool{
    
    
    return false
    //    return ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
    
}
