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
        
        //1.switch 支持任意类型的数据以及各种比较操作 --- 不仅仅是证书以及测试相等

        let vegetable = "red pepper pepper"
        
        switch vegetable {
        case "red pepper":
            let vegetableComment = "Add some raisins and make ants on a log."
            print(vegetableComment)
        case "c ucumb er", "wat ercre ss":
            let vegetableComment = "That would make a good tea sandwich."
            print(vegetableComment)
        case let x where x.hasPrefix("red"):
            let vegetableComment = "Is it a spicy \(x)?"
            print(vegetableComment)
            
        default:
            let vegetableComment = "Everything tastes good in soup."
            print(vegetableComment)
        }
        
        
        //2.可以使用forin 来遍历字典, 需要两个变量来表示每个键值对
        let interestingNumbers = [
            "Prime":    [2, 3, 5, 7, 11, 13],
            "Fibonacci":[1, 1, 2, 3, 5, 8],
            "Square":   [1, 4, 9, 16, 25],
        ]
        var largest = 0
        
        for (kind, numbers) in interestingNumbers {
            print(kind)
            print(numbers)
        
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        print(largest)
        
        
        //使用 while 来重复运行一段代码直到不满足条件。循环条件可以在开头也可以在结尾。
        
        var n = 2
        while n < 100 {
            n = n * 2
        }
        print(n)
        
        var m = 2
        
        repeat {
            m = m * 2
        }while m < 100
        
        print(m)
        
        
        
        
        //3.循环的两种方式 1:... 2.传统写法
            //1:
        var firstForLoop = 0
        for i in 0...10 {
            firstForLoop += i
            print(firstForLoop)
        }
        print(firstForLoop)
            //2:略
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

