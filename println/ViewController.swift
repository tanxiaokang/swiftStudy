//
//  ViewController.swift
//  println
//
//  Created by 三少 on 16/6/14.
//  Copyright © 2016年 Demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myVariable = 42
        
        print(myVariable)
        
        myVariable = 50
        
        print(myVariable)
        
        let myConstant = 42
        print(myConstant)
        
        //1.如果初始值没有提供足够的信息 需要在后面声明类型,用冒号分隔
        
        let implicitInteger = 70
        print(implicitInteger)
        let implicitDouble = 70.0
        print(implicitDouble)
//        let implocitDouble: Double = 70
//        print(implicitDouble)
        
        
        
        print("hello, word")
     
        
        //1.1 创建一个常量,显式指定类型为Float 并指定初始值为4
        
        let label = "The width is "
        
        let width = 94
        
        let widthLabel = label + String(width)
        
        print(widthLabel)
        
        //1.1.1 更简单 把值转换成字符串的方式:把值写到括号中,并且在括号之前写一个反斜杠
        
        let apples:Double = 3
        
        let oranges:Double = 5
        
        let name = "bob"
        
        let appleSummary = name + " I have \(apples) apples."
        
        print(appleSummary)
        
        let fruitSummary = "I have \(apples + oranges) pieces of fruit. "

        print(fruitSummary)
        
        
        
        
        //2.0 使用方括号[]来创建数组和字典,并使用下标或者键(key)来访问元素
        
        var shoppingList = ["catfish","water","tulips","blue paint"]
        
        print(shoppingList[1])
        
        
        var occupations = [
            "Malcolm":"Captain",
            "Keylee":"Mechanic",
        ]
        occupations["Jayne"] = "Public Relations";
        
        print(occupations["Keylee"])
        print(occupations)
        
        //2.1 初始化语法 创建一个空数组或者字典
        let emotyArray = []
        
        print(emotyArray)
        
        let emptyDictionary = Dictionary<NSString,Float>()
        
        print(emptyDictionary)
        
        //3.0 控制流
        
        //使用if 和 switch 来进行条件操作, 使用for-in for while do-while 来进行循环.包裹条件和循环变量括号可以省略 但是语句体的大括号是必须的
        
        let indicidiualScores = [11, 22,33,44,55,66,77]
        
        var teamScore = 0
        
        for score in indicidiualScores {
            if score > 30 {
                teamScore += 3
                print(teamScore)
            }else{
                teamScore += 1
                print(teamScore)
            }
        }
        print(teamScore)
        
        
        
        //有些变量的值是可选的.一个可选的值可能是一个具体的值或者nil 表示值缺失.在类型后面加一个问号来标记这个变量的值是可选的
//        
//        var optionalString:String? = "Hello"
//        
//        optionalString = nil
        
        var optionalName: String? = "John Appleseed"
        optionalName = nil
        var greeting = "Hello!"
        if let names = optionalName {
            greeting = "Hello,\(names)"
             print(greeting)
        }else{
            greeting = "Hello,qwe"
            print(greeting)
        }
       
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

