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
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

