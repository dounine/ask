//
//  TitleButton.swift
//  SwiftWeiBo
//
//  Created by bjike on 16/9/2.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class TitleButton: UIButton {

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        
        setImage(UIImage(named: "nav_click"), forState: UIControlState.Selected)
        
        self.sizeToFit()
        
        setTitleColor(RGB(0x333333), forState: UIControlState.Normal)
        
        self.titleLabel?.font = UIFont.systemFontOfSize(17)

        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews(){
        
        super.layoutSubviews()
        
        //swift可以这样写 
        titleLabel?.frame.origin.x = 0
        
        imageView?.frame.origin.x = titleLabel!.frame.size.width/2-7
        
    }
    
}
