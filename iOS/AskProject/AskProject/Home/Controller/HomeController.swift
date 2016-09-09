//
//  HomeController.swift
//  AskProject
//
//  Created by bjike on 16/9/5.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit
class HomeController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var recommentBtn: UIButton!
    
    @IBOutlet weak var helpBtn: UIButton!
    
    
    @IBOutlet weak var ReconmmentTable: UITableView!
    
    override func viewWillAppear(animated: Bool) {
        
        tabBarController?.tabBar.hidden = false

    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
      
        //1.移除nav的线

        moveNavBarLine()
        
        //2.设置button的图片
        
        setButtonUI()
        //3.获取数据
        getTableViewData()
        
    }
    
    private func getTableViewData(){
        
        
        
    }
    private func setButtonUI(){
        
        recommentBtn.setImage(UIImage(named: "nav_click"), forState: UIControlState.Selected)
        
        helpBtn.setImage(UIImage(named: "nav_click"), forState: UIControlState.Selected)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return 1
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //self.dataArr.count
        return 20
    }
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headview = UIView()
        
        headview.frame = CGRectMake(0, 0, ScreenWidth(), 5)
        
        headview.backgroundColor = RGB(0xf9f9f9)
        
        return headview
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 {
            
            return 15
        }else{
            
            return 5
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let  cell = tableView.dequeueReusableCellWithIdentifier("RecommentCell") as?RecommentCell
        
        
//        cell?.showCellUI(self.dataArr[indexPath.row] as? MineModel)
        
        return cell!
        
    }

    //移除NavBar的线条
   private func moveNavBarLine(){
        
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "tabBarBackImage"), forBarMetrics: UIBarMetrics.Default)
        
        navigationController?.navigationBar.shadowImage = UIImage.init()
        
    }
    
    //懒加载
    
    private lazy var dataArr: NSMutableArray = {
        
        var array = NSMutableArray()
        
        return array
        
    }()
    
    @IBAction func recommentClicked(sender: AnyObject) {
        
        recommentBtn.selected = true
        
        helpBtn.selected = false
    }
    
    
    @IBAction func helpClicked(sender: AnyObject) {
        
        helpBtn.selected = true
        
        recommentBtn.selected = false
        
        
    }
    @IBAction func searchClicked(sender: AnyObject) {
        
        let  story =   UIStoryboard.init(name: "SearchController", bundle: nil)
        
        let   head =  story.instantiateViewControllerWithIdentifier("SearchController")
        
        navigationController?.pushViewController(head, animated: true)
 
        
    }
}