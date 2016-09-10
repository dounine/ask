//
//  MineModel.swift
//  AskProject
//
//  Created by bjike on 16/9/7.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class MineModel: NSObject {

    //String!可以为Nil String？ 不能为nil 可以为“” String = "" 初始值赋值
    var name: String!
    
    var img: String!
    
    var age: Int = 0
    
    init(dict: [String: AnyObject]) {
        
        super.init()
        
        setValuesForKeysWithDictionary(dict)
        
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
        
    }
    
}
