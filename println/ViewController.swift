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
        
        print(greet("Bob", day: "Tuesday"))
    
        
        print(getGasPrices())
        
        
        print(sumOf())
        print(sumOf(42,444,421))
    }
    
    func greet(name:String,day:String) -> String {
        return "Hello \(name), today is \(day)."
    }
    
    //test1
    
    //使用一个元组来返回多个值。
    func getGasPrices() -> (Double,Double,Double) {
        return(3.09,4.9,3.79)
    }
    
    //函数的参数数量是可变的,用一个数组来获取它们:
    
    func sumOf(numbers:Int...) -> Int {
        
        var sum = 0
        for number in numbers {
            sum += number
        }
        
        return sum/2
    }
    
    
    //函数实际上是一种特殊的闭包,你可以使用{}来创建一个匿名闭包。使用 in 来分割参数并返 回类型。
    
    /*
     1. numbers .map( {
     2. (number: Int) -> Int in
     3. let result = 3 * number
     4. return result
     5. })
     */
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

