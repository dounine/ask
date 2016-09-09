//
//  HeadController.swift
//  AskProject
//
//  Created by bjike on 16/9/8.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class HeadController: UIViewController {
    
    
    @IBOutlet weak var bigHeadImage: UIImageView!
    
    
    @IBOutlet weak var bigNameLabel: UILabel!
    
    
    @IBOutlet weak var smallHeadImage: UIImageView!
    
    @IBOutlet weak var smallNameLabel: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {

    super.viewWillAppear(animated)
    //1.隐藏导航栏
   navigationController?.navigationBar.hidden = true
    
    //2.隐藏标签栏
    tabBarController?.tabBar.hidden = true
    
}

    override func viewDidLoad() {
        
        //3.初始化UI
        setUI()
        
    }

    private func setUI(){
        
        bigHeadImage.layer.masksToBounds = true
        
        bigHeadImage.layer.cornerRadius = 20
        
        smallHeadImage.layer.masksToBounds = true
        
        smallHeadImage.layer.cornerRadius = 10
        
    }
    
    @IBAction func backClicked(sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    
    @IBAction func setHeadClicked(sender: AnyObject) {
        
        
    }
    
    
    @IBAction func setNameClicked(sender: AnyObject) {
        
        
    }
}