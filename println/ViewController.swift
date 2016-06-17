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
  
        
        //对象和类
        //使用 class 和类名来创建一个类。类中属性的声明和常量、变量声明一样,唯一的区别就是 它们的上下文是类。同样,方法和函数声明也一样。
        class Shape {
            var numberOfSides = 0
            func simpleDescription() -> String {
                return "A shape with \(numberOfSides) sides."
            }
            
        }
        
       // 练习:使用 let 添加一个常量属性,再添加一个接收一个参数的方法。 要创建一个类的实例,在类名后面加上括号。使用点语法来访问实例的属性和方法
        
        let shape = Shape()
        shape.numberOfSides = 7
        
        let shapeDescription = shape.simpleDescription()
        
        print(shapeDescription)
        
        
        
        //这个版本的 Shape 类缺少了一些重要的东西:一个构造函数来初始化类实例。使用 init 来 创建一个构造器
        
        
        class NameShape{
            var numberOfSides: Int = 0
            
            var name : String
            
            var height :String
            
            init(name:String,height:String){
                self.name = name
                self.height = height
            }
            
            func simpleDescription() -> String {
                return "A shape with \(numberOfSides) sides."
            }
            
            
            //注意:self 被用来区别实例变量。当你创建实例的时候,像传入函数参数一样给类传入构造 器的参数。每个属性都需要赋值——无论是通过声明(就像 numberOfSides)还是通过构造器(就像 name)。
            //如果你需要在删除对象之前进行一些清理工作,使用 deinit 创建一个析构函数。
            //子类的定义方法是在它们的类名后面加上父类的名字,用冒号分割。创建类的时候并不需要 一个标准的根类,所以你可以忽略父类。
            //子类如果要重写父类的方法的话,需要用 override 标记——如果没有添加 override 就重写 父类方法的话编译器会报错。编译器同样会检测 override 标记的方法是否确实在父类中。
            
           
        }
        class Square: NameShape {
            var sideLength : Double
            
            init(sideLength : Double, name : String, height: String) {
                self.sideLength = sideLength
                super.init(name: name, height: height)
                numberOfSides = 4
            }
            func area() -> Double {
                return sideLength * sideLength
            }
            
            
            override func simpleDescription() -> String {
                return "A square with sides of length \(sideLength)."
            }
        }
        
        let test = Square(sideLength: 5.2, name: "my test square", height: "hahaha")
        print(test.area())
        print(test.simpleDescription())

        
        
        
        
//        练习:创建 NamedShape 的另一个子类 Circle,构造器接收两个参数,一个是半径一个是
//        名称,实现 area 和 describe 方法。 

        //属性可以有 getter 和 setter 。
        
        class EquilateralTriangle: NameShape {
            
            var sideLength: Double = 0.0
            
            init(sideLength: Double, name: String, height: NSString) {
                
                self.sideLength = sideLength
                
                super.init(name: name,height: height as String)
                
                numberOfSides = 3
                self.height = "qwe"
                
            }
            
            var perimeter : Double{
                get {
                    return 3.0 * sideLength
                }
                set{
                    sideLength = newValue / 3.0
                }
            }
            
            override func simpleDescription() -> String {
                return "A equilateral triagle with sides of length \(sideLength)."
            }
        }
        
        var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle",height: "qwe")
        print(triangle.perimeter)
        print(triangle.sideLength)
        triangle.perimeter = 9.9
        print(triangle.perimeter)
       
        
//        在 perimeter 的 setter 中,新值的名字是 newValue。你可以在 set 之后显示的设置一个名 字。
//        注意 EquilateralTriangle 类的构造器执行了三步:

//        1. 设置子类声明的属性值
//        2. 调用父类的构造器
//        3. 改变父类定义的属性值。其他的工作比如调用方法、getters 和 setters 也可以在这个阶 段完成。
        
        
        
        /* PS
            看到20P
         */
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

