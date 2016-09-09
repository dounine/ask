//
//  LoginController.swift
//  AskProject
//
//  Created by bjike on 16/9/5.
//  Copyright © 2016年 bjike. All rights reserved.
//

import UIKit

class LoginController: UIViewController,UITextFieldDelegate,UIGestureRecognizerDelegate {

    
        
    @IBOutlet weak var userTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //1.userTF和password左侧视图
        
        leftViewUI(userTF)
        
        leftViewUI(passwordTF)
        
        //2.键盘处理
        
        tapUI()

    }
    //回收键盘、视图frame和处理手势影响控件问题
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if textField == userTF {
            
            userTF.resignFirstResponder()
            
            passwordTF.becomeFirstResponder()
            
        }else{
            
            userTF.resignFirstResponder()
            
            passwordTF.resignFirstResponder()
            
            self.view.frame = CGRectMake(0, 0, ScreenWidth(), ScreenHeight())

            
        }
        
        return true
        
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        
        //判断iPhone4（两个）和5（1个）需要位移，其他不需要
        if textField == userTF {
            
            self.view.frame = CGRectMake(0, -100, ScreenWidth(), ScreenHeight()+100)
            
        }else{
            
            self.view.frame = CGRectMake(0, -200, ScreenWidth(), ScreenHeight()+200)
 
        }
        
        return true
        
    }
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
        
        if ((touch.view?.isKindOfClass(UITextField.classForCoder())) != nil) {
            
            return false
        }
        if ((touch.view?.isKindOfClass(UIButton.classForCoder())) != nil) {
            
            return false
        }
        return true
    }
    private func tapUI(){
        
        let tap =  UITapGestureRecognizer.init(target: self, action: #selector(LoginController.tapAction))
        
        self.view.addGestureRecognizer(tap)
        
    }
    
    func tapAction(){
        
        userTF.resignFirstResponder()
        
        passwordTF.resignFirstResponder()
        
        self.view.frame = CGRectMake(0, 0, ScreenWidth(), ScreenHeight())

        
    }
   private func leftViewUI(tf: UITextField){
        
        let view = UIView.init(frame: CGRectMake(0, 0, 17, 40))
        
        tf.leftView = view
        
        tf.leftViewMode = UITextFieldViewMode.Always
        
    }
    
    @IBAction func loginAction(sender: AnyObject) {
        
        let  story =   UIStoryboard.init(name: "MainTabBar", bundle: nil)
        
        let   main =  story.instantiateViewControllerWithIdentifier("MainTabBar")
        
        self.presentViewController(main, animated: false, completion: nil)
    }

}