//
//  MineCell.swift
//  AskProject
//
//  Created by bjike on 16/9/7.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class MineCell: UITableViewCell {

    @IBOutlet weak var headImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
//    class func cellID() -> String {
//        
//        return "MineCell"
//    }
    
    func showCellUI(mineModel: MineModel?){
        
        if let model = mineModel {
            
            self.headImageView.image = UIImage(named: model.img)
            
            self.nameLabel.text = model.name

        }
    }
    
//    override func awakeFromNib() {
//        
//        super.awakeFromNib()
//        
//    }
//    required init?(coder aDecoder: NSCoder) {
//        
//        
//        fatalError("init(coder:) has not been implemented")
//        
//    }
    
//    override func setSelected(selected: Bool, animated: Bool) {
//        
//        super.setSelected(selected, animated: animated)
//        
//    }
    
}
