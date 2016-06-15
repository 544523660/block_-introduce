//
//  ViewController.swift
//  属性_swift
//
//  Created by lk on 16/6/14.
//  Copyright © 2016年 LK. All rights reserved.
//

import UIKit
class students: NSObject{
    var xiaoMing: String?{
        didSet{
            print(oldValue)
        }
    }
    
    //重写setter方法
    var totalSteps: Int = 0{
        willSet(wellSteps){
            print("将要计算步行总补数\(wellSteps)")
        }
        didSet{
            if totalSteps > oldValue{
                print("计算新添加步数\(totalSteps - oldValue)")
            }
        }
    }
    
    
    
}

class ViewController: UIViewController {
    
    //懒加载
    lazy var studentsOj: students = {
        let studentsOj = students()
        return studentsOj
    }()

    var cat = "ssss"
    var car: String?
    
    
    
    //不能按照下面的书写
//    var nilStr: String? 404

    override func viewDidLoad() {
        super.viewDidLoad()
        //结构体
        struct maxInt{
            var minInt: Int
            let lengthCount: Int
        }
        var customInt = maxInt(minInt:0,lengthCount:5)
        customInt.minInt = 5
        
      
        //setter 和getter方法使用
        studentsOj.totalSteps = 200
        
        studentsOj.totalSteps = 250
        
        if car == nil {
           let nilCar = car ?? "car 是nil"
            print("??空合运算符\(nilCar)")
        }
        //car 必须初始化 设置值 不然参与运算会直接保存
        /*let mun = car! + "sss"
        print(mun)*/
        
        if cat == "ssss"{
            
        }
        
//        注意：
//        Swift 的nil和 Objective-C 中的nil并不一样。在 Objective-C 中，nil是一个指向不存在对象的指针。在 Swift 中，nil不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设置为nil，不只是对象类型。
        var serverResponseCode: Int? = 404
        // serverResponseCode 包含一个可选的 Int 值 404
        serverResponseCode = nil
        // serverResponseCode 现在不包含值
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

