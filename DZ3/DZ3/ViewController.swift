//
//  ViewController.swift
//  DZ3
//
//  Created by Andrey  on 17.06.21.


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

//        let a: Int? = 1
//        let c: Double? = 1


//        let a1:Int? = 123
//        let a2:Int? = 50
//        let a3:Int? = 5
//        let a4:Int? = 20
//        let a5:Int? = 250
//
//        var sum: Int = 0

//        sum = (a1 ?? 0) + (a2 ?? 0)
//            sum = (a4 ?? 0) + (a5 ?? 0)
//                sum = (a3 ?? 0)
//    первый вариант возврата опционала, проверка на if
//        if a3 != nil {
//            sum += a3!
//        }
//        print("sum - \(sum)")
//
//
//
//
//
//        var name = "rob"
//        var family: String = "red"
//        var otch: String? = "fwe"
//        второй вариант опционала через ??
//        print("привет, \(name) \(family) \(otch ?? "")")
//
//        if otch != nil {
//            print(otch)
//        }
//
//        третий способ через let, 75% используется этот метод
//        if let newOtch = otch {
//            print(newOtch)
//        } else {
//            print("otch - nil")
//        }
//
//        if let otch = otch {
//            print(otch)
//        }
//
//    // Кортэж "тюплы" это скобки, используются часто
//       в скобках 3-4 типа данных
//        let testTuple: (Int,String,Bool) =
//
//        let human = ("Andrey", 23, true, 78.2)
//
//        print(human)
//        print(human.name)
//        print(human.age)
//        print(human.ret)
//        print(human.weight)
//   глобальное описание, пишеться в самом началепосле viewControllera  после classa
//        typealias car = (name:"Andrey", age: 23, ret:true, weight:78.2)

        
//        Домашнее задание (Урок 3)
        
//        1. Создать тюпл с тремя параметрами:
//        - максимальное количество отжиманий
//        - максимальное количество подтягиваний
//        - максимальное количество приседаний
//        Заполните его своими достижениями и распечатайте его через print()
        
        var myWorkout = (pushup:80, pullup:20, sguats:80)
        
        print(myWorkout)
        
//        2. Также сделайте три отдельных вывода в консоль для каждого      параметра. При том одни значения доставайте по индексу, а другие по параметру
          
        print("pushup = \(myWorkout.pushup)")
        print("pullup = \(myWorkout.pullup)")
        print("sguats = \(myWorkout.2)")
        
//        3. Создайте такой же тюпл для другого человека (например друга) с такими же параметрами, но с другими значениями. Используйте промежуточную переменную чтобы поменять соответствующие значения первого тюпла на значения второго
        
        var girlWorkout = (pushup:20, pullup:5, sguats:40)
        
        var tuple = myWorkout
        myWorkout = girlWorkout
        girlWorkout = tuple
        
//        4. Создайте третий тюпл с теми же параметрами, но значения это разница между соответствующими значениями первого и второго тюплов. Результат выведите в консоль
        
        let tupleDifference = (pushup:myWorkout.0 - girlWorkout.0, pullup:myWorkout.1 - girlWorkout.1, sguats:myWorkout.sguats - girlWorkout.sguats)
        
        print("Tuple difference \(tupleDifference)")
//     при выведи в консоль, я не очень понял, почему tupleDifference выводить -60, -15, -40, почему с минусом?!
        
//        5. Создать пять строковых констант. Одни константы это только цифры, другие содержат еще и буквы. Найти сумму всех этих констант приведя их к Int. (Используйте и optional binding и  force unwrapdping, и оператор ??)
//        Когда посчитаете сумму, то представьте свое
//        выражение в виде строки
//        Например: 5 + nil + 2 + 3 + nil = 10.
        
        let number1 = "10"
        let number2 = "22abc"
        let number3 = "13"
        let number4 = "55"
        let number5 = "3cba"
        
      
        
      
        print(number1 ?? 0)
        print(number2 ?? 0)
        print(number3 ?? 0)
        print(number4 ?? 0)
        print(number5 ?? 0)
        
        var sum: Int = 0
        
        if Int(number1) != nil {
            sum += Int(number1)!
        }
        
        if Int(number2) != nil {
            sum += Int(number2)!
        }
        
        if Int(number3) != nil {
            sum += Int(number3)!
        }
        
        if Int(number4) != nil {
            sum += Int(number4)!
        }
        if Int(number5) != nil {
            sum += Int(number5)!
        }
        
// вариант ниже тоже можно использовать для определения nil?
//        if number5 == nil {
//            print("number5 is nil")
//        } else {
//            print("\(number5)")
//        }
        
        print("Сумма = \(sum)")
        
      var sumStr = 0
        
        if let str1 = Int(number1) {
            sumStr += str1
        }
        
        if let str2 = Int(number2) {
            sumStr += str2
        }
    
        if let str3 = Int(number3) {
            sumStr += str3
        }
        if let str4 = Int(number4) {
            sumStr += str4
        }
        if let str5 = Int(number5) {
            sumStr += str5
        }
        
        print("Сумма1 = \(sumStr)")
        print("\(number1) + \(number2) + \(number3) + \(number4) + \(number5) = \(sum)")
        
        
//        6. Создать тюпл с тремя параметрами:
//        сode, message, errorMessage (число, строка и строка). В этом тюпле code всегда содержит данные, но сама
//        строка приходит
//        только в одном поле. Если code от 200 до 300 исключительно, то выводите
//        message, в противном случает выводите errorMessage. После этого
//        проделайте тоже самое только без участия code.
     
//        #1
        var newTuple = (250, "message", "errorMessage")
        
        if newTuple.0 >= 200 && newTuple.0 <= 300 && newTuple.1 != nil {
            print("message")
        } else if newTuple.0 < 200 && newTuple.0 > 300 && newTuple.2 != nil {
            print("errorMessage") }
//       #2
        let newTuple1 = ("Hello", "404 erorr")
        
        if newTuple1.0 != nil {
            print(newTuple1.0)
        } else {
            print(newTuple1.1)
        }

        
//        7. Создайте 5 тюплов с тремя параметрами: имя, номер машины, оценка за контрольную. При создании этих тюплов не должно быть никаких данных. После создания каждому студенту установите имя.
//        Некоторым установите номер машины. Некоторым установите результат контрольной. Выведите в консоль:
//        - имена студента
//        - есть ли у него машина
//        - если да, то какой номер
//        - был ли на контрольной
//        - если да, то какая оценка
        
        var student1: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
        var student2: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
        var student3: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
        var student4: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
        var student5: (name: String?, carNumber: Int?, controlGrade: Int?) = (nil, nil, nil)
        
        student1.name = "Alex"
        student2.name = "Oleg"
        student3.name = "Olga"
        student4.name = "Kris"
        student5.name = "Andrey"
        
        student1.carNumber = 7777
        student3.carNumber = 0001
        student4.carNumber = 6666
        
        student2.controlGrade = 8
        student5.controlGrade = 10
        
        if student1.name != nil {
            print("Имя \(student1.0!)")
        }
        
        if let carNumber = student1.carNumber {
            print("У студента есть машина и номер \(carNumber)")
        } else {
            print("У сдунета нет авто")
        }
        
        if let controlGrade = student1.controlGrade {
            print("Присуствовал на контрольной и оценка \(controlGrade)")
        } else {
            print("Отсуствовал на контрольной")
        }
        
        if student2.name != nil {
            print("Имя \(student2.name!)")
        }
        
        if let controlGrade = student2.controlGrade {
            print("Присуствовал на контрольной и оценка \(controlGrade)")
        } else {
            print("Отсуствовал на контрольной")
        }

//        8. Создайте тюпл из 5-ти опциональных Int. (Подсказка - опциональный Int это Int?). Посчитайте сумму этих 5- ти элементов используя:
//        - в одном случае используйте optional binding - в другом forced unwrapping
//        - а в третьем оператор ??


        let a1:Int? = 123
        let a2:Int? = 50
        let a3:Int? = 5
        let a4:Int? = 20
        let a5:Int? = 250
        
        let abba = (a1, a2, a3, a4, a5)
        
//        optional binding
        
        var fiveSumm: Int = 0
        
        if let b1 = a1 {
            fiveSumm += b1
        }
        if let b2 = a2 {
            fiveSumm += b2
        }
        if let b3 = a3 {
            fiveSumm += b3
        }
        if let b4 = a4 {
            fiveSumm += b4
        }
        if let b5 = a5 {
            fiveSumm += b5
        }
        print("Summa = \(fiveSumm)")
    
//      forced unwrapping
        
        var fiveSumm1: Int = 0
      
        if a1 != nil {
            fiveSumm1 += a1!
        }
        if a2 != nil {
            fiveSumm1 += a2!
        }
        if a3 != nil {
            fiveSumm1 += a3!
        }
        if a4 != nil {
            fiveSumm1 += a4!
        }
        if a5 != nil {
            fiveSumm1 += a5!
        }
        print("Summa1 = \(fiveSumm1)")
        
//       ??
        
        var summa2: Int = 0
        
        
        
          print(a1 ?? 0)
          print(a2 ?? 0)
          print(a3 ?? 0)
          print(a4 ?? 0)
          print(a5 ?? 0)
        
        
        
        
        
        
        
        
    }
    
}


