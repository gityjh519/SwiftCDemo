//
//  ViewController.swift
//  SwiftCDemo
//
//  Created by yaojinhai on 2019/6/22.
//  Copyright © 2019 yaojinhai. All rights reserved.
//

import UIKit

// MARK: - 被C要调用的函数

func swiftFunImplement(a:Int32) -> Void {
    print("收到一个c函数的Int值->\(a)");
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        testCRunSwift(); // c 调用 swift
        
        testRunC(); // 测试调用c 和 c++
    }
    
    

    func testCRunSwift() -> Void {
        
        swiftFuncIMP = swiftFunImplement(a:);
        
        print("开始运行---");
        runSwiftFun();
        
        
    }
    
    func testRunC() -> Void {
        print("\n----------------------------\n\n")
        printHellow();
        let cRandomInt = getRandomInt();
        print("\n")
        print("收到C函数的随机数是：\(cRandomInt)");
        
        let person = createBy("peter", 14);
        printPersonInfo(person);
        let cName = getPersonName(person);
        let name = String(cString: cName!);
        print("fetch name is：\(name)");
        
        destoryModel(person);
    }

}



