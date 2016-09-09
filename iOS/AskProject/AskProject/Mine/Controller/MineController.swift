//
//  MineController.swift
//  AskProject
//
//  Created by bjike on 16/9/5.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class MineController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var MineTableView: UITableView!
        
    
    @IBOutlet weak var headImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        //1.移除nav的线，并设置背景图
        
        moveNavBarLine()
        //2.返回按钮点击不隐藏导航和标签
        tabBarController?.tabBar.hidden = false

        navigationController?.navigationBar.hidden = false

    }
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        //1.获取列表数据
        
        getListData()
        
    }
    

    private func getListData(){
        
        
        let data = MineData()
        //4个
        for dic in data.getMineData() {
            
            let big = MineBigModel.init(dict: dic as![String : AnyObject])
            
            self.numArr.addObject(big)
            
//            let arr: NSArray = dic["dataSources"]as!NSArray
//                    
//                    for subDic in arr {
//                        
//                        let  mine = MineModel.init(dict: subDic as! [String : AnyObject])
//                        
//                        self.dataArr.addObject(mine)
//                        
//                    }
        }
        
        self.MineTableView.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
//        let big = self.numArr[section]
        
        return self.dataArr.count
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return self.numArr.count
    }
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headview = UIView()
        
        headview.frame = CGRectMake(0, 0, ScreenWidth(), 20)
 
        headview.backgroundColor = RGBA(247, g: 247, b: 247, a: 1.0)
        
        return headview
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 {
            
            return 10
        }else{
            
          return 20
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let  cell = tableView.dequeueReusableCellWithIdentifier("MineCell") as?MineCell
        
        
        cell?.showCellUI(self.dataArr[indexPath.row] as? MineModel)
        
        return cell!
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row == 4 {
            
            let  story =   UIStoryboard.init(name: "SettingController", bundle: nil)
            
            let   set =  story.instantiateViewControllerWithIdentifier("SettingController")
            
            navigationController?.pushViewController(set, animated: true)
            
        }
        
    }
    //移除NavBar的线条
  private  func moveNavBarLine(){
        
    
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "navigitionBar"), forBarMetrics: UIBarMetrics.Default)
    
        navigationController?.navigationBar.shadowImage = UIImage.init()
    
    }
    
    @IBAction func headClicked(sender: AnyObject) {
        
        let  story =   UIStoryboard.init(name: "HeadController", bundle: nil)
        
        let   head =  story.instantiateViewControllerWithIdentifier("HeadController")
        
        navigationController?.pushViewController(head, animated: true)
 
        
    }
    
    //懒加载
    
    private lazy var dataArr: NSMutableArray = {
        
        var array = NSMutableArray()
        
        return array
        
    }()
    
    private lazy var numArr: NSMutableArray = {
        
        var array = NSMutableArray()
        
        return array
        
    }()
    
}