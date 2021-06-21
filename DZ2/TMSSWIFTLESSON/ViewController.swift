//
//  ViewController.swift
//  TMSSWIFTLESSON
//
//  Created by Andrey  on 17.06.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // HomeWorkLesson02
                
                // TASK 01 Создайте 4 дробных числа в константах. Выведите в консоль сумму и произведение целых частей, а так же сумму и произведение дробных частей этих чисел
        //        Например числа (2.5, 9.7, 6.9, 8.2)
        //        Результаты
        //        Сумма целых частей - 25
        //        Произведение целых частей - 864
        //        Сумма дробных частей - 23
        //        Произведение дробных частей - 630
          
                let a1: Double = 2.5
                let b1: Double = 9.7
                let c1: Double = 6.9
                let d1: Double = 8.2
                
                let a = Int(a1) + Int(b1) + Int(c1) + Int(d1)
                let b = Int(a1) * Int(b1) * Int(c1) * Int(d1)
                let c = Int(a1 * 10) % 10 + Int(b1 * 10) % 10 + Int(c1 * 10) % 10 + Int(d1 * 10) % 10
                let d = (Int(a1 * 10) % 10) * (Int(b1 * 10) % 10) * (Int(c1 * 10) % 10) * (Int(d1 * 10) % 10)
              
                print(a)
                print(b)
                print(c)
                print(d)

                
                // TASK 02 Задайте любое целое число и напишите конструкцию if else, которая будет выводить в консоль является ли это число четным
                
                let number1 = 34


                if (number1 % 2) == 0  {
                    print("Even number \(number1)")
                } else {
                    print("Not an even number \(number1)")
                }
    }


}

