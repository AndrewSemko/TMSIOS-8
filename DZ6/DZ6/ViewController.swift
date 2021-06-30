//
//  ViewController.swift
//  DZ6
//
//  Created by Andrey  on 28.06.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activiti: UIActivityIndicatorView!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var textFilder: UITextField!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

//
//        var human: Human = Human(firstname: "Andrey",
//                                 lastage: "Semko",
//                                 surName: "Viktorovich",
//                                 age: 36,
//                                 wieght: 90)
//        print(human.firstname)
//        print(human.lastage)
//        print(human.surName)
//        print(human.age)
//        print(human.wieght)
//
//        let human3: Human = Human(firstname: "Alex",
//                                 lastage: "Semko",
//                                 surName: "Viktorovich",
//                                 age: 36,
//                                 wieght: 90)
////        human = human3
////        при изм.human на human3 то human полностью перезаписывается в human3
//        var tup1: (name: String, age: Int) = ("Andrey", 36)
//        print(tup1)
//        let tup2 = tup1
//        tup1.name  = "Oleg"
//        print(tup2)
//
//        let human2 = human
//        human2.firstname = "Oleg"
//
//        print("HUMAN 1")
//        print(human.firstname)
//        print(human.lastage)
//        print(human.surName)
//        print(human.age)
//        print(human.wieght)
//
//        print("HUMAN 2")
//        print(human2.firstname)
//        print(human2.lastage)
//        print(human2.surName)
//        print(human2.age)
//        print(human2.wieght)
//
//        human.sayHello()
//        human3.sayHello()
//
//
//
//
//
//
//
//    }
//
//    @IBAction func buttonAction(_ sender: UIButton) {
//
//        if let text = textFilder.text { if !text.isEmpty {
//            view.backgroundColor = .blue
//            print("text - \(text)")
//            if !activiti.isAnimating {
//                activiti.startAnimating()
//            }
//        }
//        } else {
//            if activiti.isAnimating {
//                activiti.stopAnimating()
//        }
//        print("ошибка текст пустой ")
//        }
//
//
//
// //       if activiti.isAnimating {
//  //          activiti.stopAnimating()
// //       } else {
// //           activiti.startAnimating()
// //       }
//        let student1: Student = Student(name: "Alex", surname: "Ivanov", yearOfBirth: 2002, averageScore: 7)
//        let student2: Student = Student(name: "Anton", surname: "Petrov", yearOfBirth: 2003, averageScore: 9)
//        let student3: Student = Student(name: "Roman", surname: "Sidorov", yearOfBirth: 1999, averageScore: 4)
//
//        print("\(student1.name) \(student1.surname), year of birth \(student1.yearOfBirth), average score \(student1.averageScore);")
//        print("\(student2.name) \(student2.surname), year of birth \(student2.yearOfBirth), average score \(student2.averageScore);")
//        print("\(student3.name) \(student3.surname), year of birth \(student3.yearOfBirth), average score \(student3.averageScore);")

        let group: GroupOfStudents = GroupOfStudents(bandName: "TMSIOS-8")
        let jurnal = [student1,student2,student3,student4]
        
        group.new()
        group.new1(array: jurnal)
        group.new2(student: )
    }
    
 
    
    
}
