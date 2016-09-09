//
//  RecommentCell.swift
//  AskProject
//
//  Created by bjike on 16/9/7.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class RecommentCell: UITableViewCell {

    
    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var headImage: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var goodBtn: UIButton!
    
    @IBOutlet weak var answerBtn: UIButton!
    
    
    
    @IBAction func goodBtnClicked(sender: AnyObject) {
        
        goodBtn.selected = !goodBtn.selected
        
    }
    
    
    @IBAction func answerBtnClicked(sender: AnyObject) {
                
        answerBtn.selected = true

    }
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        
        goodBtn.setImage(UIImage(named: "zan_click"), forState: UIControlState.Selected)
        
        goodBtn.setImage(UIImage(named: "zan"), forState: UIControlState.Normal)

        
    }
}
