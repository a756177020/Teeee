//
//  ViewController.swift
//  AiShixi
//
//  Created by 斌小狼 on 2017/9/11.
//  Copyright © 2017年 GuoYun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var text: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.backgroundColor = UIColor.red
        appendThreeViews()
        
    }
    //18896602024
    func  appendThreeViews()  {
        let firstView = UIView(frame:CGRect(x:40,y:80,width:100,height:100))
        firstView.backgroundColor = UIColor.green
        self.view.addSubview(firstView);
        
        let secondView = UIView(frame:CGRect(x:40,y:80,width:120,height:120))
        secondView.backgroundColor = UIColor.blue
        self.view.addSubview(secondView);
        
        let thirdView = UIView(frame:CGRect(x:40,y:80,width:140,height:140))
        thirdView.backgroundColor = UIColor.purple
        self.view.addSubview(thirdView);

        let  num = 30
        var  n = 0 ;
        n = num.distance(to: 40)
        var  u = 0;
        u = num.advanced(by: 10)
        
        print(" cha: \(n) \n he: \(u) ")
        print("\u{2600} \u{2743}")
        let name = "1"
        print("\(name.isEmpty)")
        
        let XING = "孙"
        let MING = "昊"
        let QUANMING = XING + " " + MING
        print("全名是: \(QUANMING)")
        
//        var LALA = "么么哒"
//        let FU = "!"
//        let F1 = LALA.appending(FU)
//        var F2 = LALA.index(after: LALA)
//        print("\(F2)")
        let XiaoLang = (name:"小狼",age:"18")
        print("Xiaolang 的名字是\(XiaoLang.name)年龄为\(XiaoLang.age)")
        
        let bb = (23,8) > (2,83)
        print(bb);
        
        let message = "Hi\tXiaoLang,\n\'Good\rmorning\'"
        print(message)
        
        /*
         if从句
         */
        if XiaoLang.name != QUANMING {
            print("XiaoLang de mingzishi : \(XiaoLang.name)\nquanmingshi : \(QUANMING)")
        }
        /*
         for语句
         */
        for x in 0 ..< 3 {
            print("\(x)")
        }
        
        for i in 0 ... 3 {
            print("\(i)")
        }
        /*
         for循环与字典的链接
         */
        let ZiDian = ["学生1":"傻逼","学生2":"大傻逼","学生3":"我滴天哪"]
        for (xingming,shuohua) in ZiDian {
            print(xingming + "说:\(shuohua)!")
        }
        /*
         while 循环
         */
        var TiaoJian1 = 0
        while TiaoJian1 <= 3 {
            TiaoJian1 += 1
            print(TiaoJian1)
        }
        
        var TiaoJian2 = 0
        repeat
        {
            TiaoJian2 += 1
            print(TiaoJian2)
        }
        while TiaoJian2 < 3
        
        /*
         if从句的使用
         */
        let PerID = "12345685485458"
        let count = PerID.lengthOfBytes(using: String.Encoding.utf8)
        if count != 18 && count != 15 {
            print("错误")
        }
        if count == 18 {
            print("对")
        }
        else if count == 15{
            print("对")
        }
        else{
            print("错误")
        }
        
        /*
         for循环与if从句与switch从句
         */
        for time in 1...24 {
            if time == 8 {
                continue
            }
            switch time {
            case 7:
                print("起床")
            case 8,12,16:
                print("吃饭")
            case 1...6:
                print("休息")
            case let x where x>18 && x<=24:
                print("玩")
            default:
                print("很忙")
            }
        }
       
        /*
         数组
         */
        let ShuZu = ["男","女","男","女","男","女","男","女","男","女","男","女"]
        var BoyNumber = 0
        for Ren in ShuZu {
            if Ren == "女" {
                /*continue的使用*/
                continue
            }
            BoyNumber += 1
        }
        print(BoyNumber)
        
        let time2 = 6
        var message2 = "It's Now "
        switch time2 {
        case 2,3,6,7,9,10,16:
            message2 += "\(time2) o'clock"
            /*fallthrough的使用*/
            fallthrough
        default:
            message2 += "."
        }
        print(message2)
        
        let stringArray = Array<String>()
        let floatArray = [Float]()
        var intArray = [1,9,5,3,7]
        
        let baohan = intArray.contains(3)
        print(baohan)
        
        /*数组添加*/
        intArray += [6]
        intArray.append(8)
        print(intArray)
        
        intArray.insert(7, at:6)
        print(intArray)
        
        /*数组中元素的替换*/
        intArray[1] = 2
        print(intArray)
        
        intArray[2...4] = [3,4,5]
        print(intArray)
        
        intArray.sorted(by: >)
        
        
        intArray.removeFirst()
        print(intArray)
        intArray.removeLast()
        print(intArray)
        intArray.remove(at: 2)
        print(intArray)
        intArray.removeSubrange(Range(1..<3))
        print(intArray)
        intArray.removeAll()
        print(intArray)
        
        
        
        
        
    }

}
