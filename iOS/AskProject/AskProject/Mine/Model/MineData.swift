//
//  MineData.swift
//  AskProject
//
//  Created by bjike on 16/9/7.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class MineData: NSObject {

    func getMineData() -> NSArray{
        
        let dic1: [String: AnyObject] = ["name":"消息","img":"message.png"]
        
        let arr1 = [dic1]
        
        let dic7: [String: AnyObject] = ["name":"1","dataSources":arr1]

        let dic2: [String: AnyObject] = ["name":"收藏答案","img":"collect.png"]

        let dic3: [String: AnyObject] = ["name":"关注问题","img":"focus.png"]

        let arr2 = [dic2,dic3]
        
        let dic8 :[String: AnyObject] = ["name":"2","dataSources":arr2]


        let dic5: [String: AnyObject] = ["name":"我的题库","img":"myanswer.png"]
        
        let arr3 = [dic5]
        
        let dic9 :[String: AnyObject] = ["name":"3","dataSources":arr3]


        let dic6: [String: AnyObject] = ["name":"设置","img":"setting.png"]

        let arr4 = [dic6]
        
        let dic10 :[String: AnyObject] = ["name":"4","dataSources":arr4]

        let arr5 = [dic7,dic8,dic9,dic10]
        
        return arr5
 
    }
    
}
