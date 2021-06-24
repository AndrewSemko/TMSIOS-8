//
//  ViewController.swift
//  DZ4
//
//  Created by Andrey  on 21.06.21.
//

import UIKit

class ViewController: UIViewController {

//    func printName()  {
//        print("Hello")
//        print("123")
//    }
    
//    func mull() {
//        print(90 * 1000)
//    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

//
//        func printInfoStudent(student: (name: String?, carNumber: Int?, controlGrade: Int?)) {
//
//        _ = student
//
//            if student.name != nil {
//                print("Имя \(student.0!)")
//            }
//
//            if let carNumber = student.carNumber {
//                print("У студента есть машина и номер \(carNumber)")
//            } else {
//                print("У сдунета нет авто")
//            }
//
//            if let controlGrade = student.controlGrade {
//                print("Присуствовал на контрольной и оценка \(controlGrade)")
//            } else {
//                print("Отсуствовал на контрольной")
//            }
//        }
//
//        var student1: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
//        var student2: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
//        var student3: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
//        var student4: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
//        var student5: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
//
//        student1.name = "Alex"
//        student2.name = "Oleg"
//        student3.name = "Olga"
//        student4.name = "Kris"
//        student5.name = "Andrey"
//
//        student1.carNumber = 7777
//        student3.carNumber = 0001
//        student4.carNumber = 6666
//
//        student2.controlGrade = 8
//        student5.controlGrade = 10
//
//
//        printInfoStudent(student: student1)
//        printInfoStudent(student: student2)
//        printInfoStudent(student: student3)
//        printInfoStudent(student: student4)
//        printInfoStudent(student: student5)

//        DZ4
        
//        # TASK 1
  
        let worker1: (name: String, age: Int, sallary: Float) = ("Andrey", 22, 58.9)
        let worker2: (name: String, age: Int, sallary: Float) = ("Alex", 47, 77.7)
        let worker3: (name: String, age: Int, sallary: Float) = ("Gena", 33, 46.8)
        
        func printInfoWorker (worker: (name: String, age: Int, sallary: Float)) {
            
            _ = worker
            
            let age = Int.random(in: 0...100)
                switch age {
                case 41...100:
                    print("зарплата увелиться в 3 раза")
                case 31...40:
                    print("зарплата увелиться в 2 раза")
                case 18...30:
                    print("зарплата увелиться в 1.5 раза)
                default:
                break
                
                }
        }
        
        printInfoWorker(worker: worker1)
        printInfoWorker(worker: worker2)
        printInfoWorker(worker: worker3)
        
//        # TASK 2

        let a = 22.5
        let b = 11
        let c = 33

        func summaValue(a: Double, b: Int, c: Int) {

            let sum = (Int(a) + b + c) / 3

            print("summa \(sum)")

        }

        summaValue(a: a, b: b, c: c)

//        # TASK 3
        
//        n - сумма кредита
//        у - кол-во лет по кредиту
//        р - процент по кредиту
        
        
//
//        var n = 1.0
//        var result = 45 * pow(n, 3) + 20 * pow(n, 2) + 19
//        print(result)
        
//        m = (n * p * (1 + p)*y) / (12 * ((1 + p) * y) - 1)


        func calculationCredit(suumm: (n: Int, y: Int, p: Double)) {

            let i = pow(1 + p, Double(y))

            let m = Int(Double(n) * p * i) / (12 * Int(i) - 1)

            let s = (m * 12) * y

            print("месячные выплаты = \(m)")
            print("суммарная выплата за все месяца каждого года = \(s)")

        }

              let n = 1000000
              let y = 10
              let p = 0.14

        calculationCredit(suumm: (n: 10000000, y: 10, p: 0.14))
        
     
            

        
        
        
    }
}

