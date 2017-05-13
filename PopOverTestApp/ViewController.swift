//
//  ViewController.swift
//  PopOverTestApp
//
//  Created by しょうじこうへい on 2017/01/30.
//  Copyright © 2017年 KouheiShoji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
   // var timeA:
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        // Buttonを作る.
        let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))//位置
        myButton.layer.position = self.view.center//位置
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 20.0
        myButton.backgroundColor = UIColor.orange//色
        myButton.setTitle("Present!", for: UIControlState.normal)
        myButton.addTarget(self, action: #selector(ViewController.onMyButtonClick(sender:)), for: UIControlEvents.touchUpInside)
        
        // viewにButtonを追加.
        self.view.addSubview(myButton)
       

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
     ボタンがタップされた時に呼び出されるメソッド.
     */
    func onMyButtonClick(sender : UIButton){
        
        // コンテンツのViewControllerを生成.
        let popover = UIViewController()
        
        // コンテンツViewControllerのサイズを指定.
        popover.preferredContentSize = CGSize(width: 500, height: 300)
        
        // コンテンツViewControllerの背景を青色に設定.
        popover.view.backgroundColor = UIColor.white
        popover.modalPresentationStyle = .popover
        
        // popover内にButtonを作る.
        //タイマー
        let myButton2 = UIButton(frame: CGRect(x: 0, y: 0, width: 500, height: 150))
        myButton2.backgroundColor = UIColor.blue
        myButton2.setTitle("タイマー", for: UIControlState.normal)
        
        // popover内にButtonを作る.その２
        let myButton2_1 = UIButton(frame: CGRect(x: 10, y: 160, width: 100, height: 50))
        myButton2_1.backgroundColor = UIColor.red
        myButton2_1.setTitle("プレイヤー２ -", for: UIControlState.normal)
        
        // popover内にButtonを作る.その２
        let myButton2_2 = UIButton(frame: CGRect(x: 10, y: 220, width: 100, height: 50))
        myButton2_2.backgroundColor = UIColor.green
        myButton2_2.setTitle("プレイヤー２ +", for: UIControlState.normal)
        
        // popover内にButtonを作る.その3
        let myButton3_1 = UIButton(frame: CGRect(x: 220, y: 160, width: 100, height: 50))
        myButton3_1.backgroundColor = UIColor.red
        myButton3_1.setTitle("プレイヤー3 -", for: UIControlState.normal)
    
        // popover内にButtonを作る.その3
        let myButton3_2 = UIButton(frame: CGRect(x: 220, y: 220, width: 100, height: 50))
        myButton3_2.backgroundColor = UIColor.green
        myButton3_2.setTitle("プレイヤー3 +", for: UIControlState.normal)

        // popover内にButtonを作る.その4
        let myButton4_1 = UIButton(frame: CGRect(x: 330, y: 160, width: 100, height: 50))
        myButton4_1.backgroundColor = UIColor.red
        myButton4_1.setTitle("プレイヤー4 -", for: UIControlState.normal)
        
        // popover内にButtonを作る.その4
        let myButton4_2 = UIButton(frame: CGRect(x: 330, y: 220, width: 100, height: 50))
        myButton4_2.backgroundColor = UIColor.green
        myButton4_2.setTitle("プレイヤー4 +", for: UIControlState.normal)

        
        
        // popover内にButtonを追加.
        popover.view.addSubview(myButton2)
        popover.view.addSubview(myButton2_1)
        popover.view.addSubview(myButton2_2)
        
        popover.view.addSubview(myButton3_1)
        popover.view.addSubview(myButton3_2)
        
        popover.view.addSubview(myButton4_1)
        popover.view.addSubview(myButton4_2)

       
        
        if let presentationController = popover.popoverPresentationController {
            presentationController.permittedArrowDirections = .any
            presentationController.sourceView = sender
            presentationController.sourceRect = sender.bounds
        }
        
        present(popover, animated: true, completion: nil)
    }


}

/*
 //
 //  ViewController.swift
 //  swiftdocs
 //
 //  Created by Misato Morino on 2016/08/15.
 //  Copyright © 2016年 Misato Morino. All rights reserved.
 //
 
 import UIKit
 
 class ViewController: UIViewController {
 
 override func viewDidLoad() {
 
 // Buttonを作る.
 let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
 myButton.layer.position = self.view.center
 myButton.layer.masksToBounds = true
 myButton.layer.cornerRadius = 20.0
 myButton.backgroundColor = UIColor.orange
 myButton.setTitle("Present!", for: UIControlState.normal)
 myButton.addTarget(self, action: #selector(ViewController.onMyButtonClick(sender:)), for: UIControlEvents.touchUpInside)
 
 // viewにButtonを追加.
 self.view.addSubview(myButton)
 }
 
 
 
 /*
 ボタンがタップされた時に呼び出されるメソッド.
 */
 func onMyButtonClick(sender : UIButton){
 
 // コンテンツのViewControllerを生成.
 let popover = UIViewController()
 
 // コンテンツViewControllerのサイズを指定.
 popover.preferredContentSize = CGSize(width: 200, height: 200)
 
 // コンテンツViewControllerの背景を青色に設定.
 popover.view.backgroundColor = UIColor.blue
 popover.modalPresentationStyle = .popover
 
 if let presentationController = popover.popoverPresentationController {
 presentationController.permittedArrowDirections = .any
 presentationController.sourceView = sender
 presentationController.sourceRect = sender.bounds
 }
 
 present(popover, animated: true, completion: nil)
 }
 }
 */
