//
//  SearchController.swift
//  AskProject
//
//  Created by bjike on 16/9/8.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class SearchController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate {
    
    @IBOutlet weak var searchTF: UITextField!
    
    @IBOutlet weak var searchTableView: UITableView!
    
    override func viewWillAppear(animated: Bool) {
        
        //1.设置导航栏风格
        moveNavBarLine()
        
        navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        
        tabBarController?.tabBar.hidden = true
        
    }
    override func viewDidLoad() {
        
        
        //2.设置搜索框左侧视图
        
        leftViewUI(searchTF)
        
        //3.手势回收键盘
        
        tapUI()
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //self.searchArr.count
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SearchCell")as?SearchCell
        
        return cell!
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 32
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       
        let view = UIView.init(frame: CGRectMake(0, 0, ScreenWidth(), 27))
        
        let head = UILabel.init(frame: CGRectMake(0, 12, ScreenWidth(), 20))
        
        head.backgroundColor = UIColor.whiteColor()
        
        head.text = "       搜索历史"
        
        head.textColor = RGB(0x666666)
        
        head.font = UIFont.systemFontOfSize(14)
        
        view.addSubview(head)
        
        return view
        
    }
    //tf左侧视图
    private func leftViewUI(tf: UITextField){
        
        let view = UIView.init(frame: CGRectMake(0, 0, 9, 35))
        
        tf.leftView = view
        
        tf.leftViewMode = UITextFieldViewMode.Always
        
    }
    //手势
    private func tapUI(){
        
        let tap =  UITapGestureRecognizer.init(target: self, action: #selector(LoginController.tapAction))
        
        self.view.addGestureRecognizer(tap)
        
    }
    
    func tapAction(){
        
        searchTF.resignFirstResponder()
        
    }
//代理回收键盘
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        searchTF.resignFirstResponder()

        return true
    }
    
    //移除NavBar的线条
    private func moveNavBarLine(){
        
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(named: "tabBarBackImage"), forBarMetrics: UIBarMetrics.Default)
        
        navigationController?.navigationBar.shadowImage = UIImage.init()
        
    }
    
    @IBAction func backClicked(sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
    @IBAction func searchClicked(sender: AnyObject) {
        
        
    }
    
    @IBAction func delectRecordClicked(sender: AnyObject) {
        
        
        
    }
    
    //懒加载
    
    private lazy var searchArr: NSMutableArray = {
        
        var array = NSMutableArray()
        
        return array
        
    }()
    
    
}