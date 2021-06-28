//
//  ViewController.swift
//  DZ5
//
//  Created by Andrey  on 24.06.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  /*
        let array = [23,4,7]
        
        print("\(array.count)")
         
//
        for _ in 0..<100 {
            print("ios")
        } else {
            print("hello")
        }
//  для частого повторения, простота
        var test = 3
        while (test < 100) {
            test *= 3
            print(test)
        }
//         часто используется
        var sum = 0
        for item in array {
            sum += item
        }
        print(sum)
    
//       часто используется и только метод массива, чаще используется
        array.forEach {
            (items) in     print(items)
        }
//        break прекратит цикл в массиве
        for index in array {
            print("\(index)")
            if index == 1 {
                break
            }
        }
//    continue перепрыгивает из цикла в цикл в массиве
        
        for index in array {
            print("\(index)")
            if index == 1 {
                continue
            }
        }
        
//        для добавления в массив
        var varArray: [Int] = []
        varArray.append(3)
//        добавляет весь масссив
        varArray.append(contentsOf: array)
//        добавить в 0 элемент 2
        varArray.insert(0, at: 2)
//        удалить первый элемент
        varArray.remove(at: 1)
//        удалить весть массив
        varArray.removeAll()
//        выведит и возращает значение в массив, он опционал ? или nil
        varArray.firstIndex(of: 2)
        print(varArray)
 */
 /*
//       ВОЗРАЩАЮЩИЕ ФУНКЦИИ
        
        func text() -> Int {
           return 5
        }
        print(text())
        
        func value(a: Int, b: Int, c: Int) -> Double {
            let avarValue = Double(a + b + c) / 3
//            return возвращает одно значение Double
            return avarValue
        }
        func value(a: Int, b: Int, c: Int) -> (name: String, age: Int) {
            let avarValue = Double(a + b + c) / 3
//            return возвращает много значений
            return ("Alex", 29)
        }
        
//        для проверки any и каждого типа в массиве
        let arrayRed: [Any] = [89, 89.9, "wfw"]
        for i in arrayRed {
            if i is Int {
                print("i - int \(i)")
            }
        }
//         Строки
        
        let name = "Andrey"
//       добавление строки
//        name.append("Alex")
//        возращает номер один А, первое значение в строке
//        name.startIndex
        let index123 = name.index(before: name.endIndex)
        
        func getCharacter(from string: String, at: Int) -> String? {
            guard string.count> index else { return nil }
            
        }
 */
//        DZ5
        
//        #1
        
        let strEglish = "adcdefghijklmnopqrstuvwxyz"
        let oneСharacter: Character = "q"
        var sum = 0
        
        for i in strEglish {
          sum += 1
            if i == oneСharacter {
                print("This character '\(oneСharacter)' is at index \(sum)")
            }
        }
      
//        #2

        let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        var summa = 0
//        #a
        for day in daysInMonths {
            summa += 1
            print("\(day) days in \(summa) month")
        }
//        #b
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "Jule", "Aug", "Sep", "Oct", "Nov", "Dec"]
        
        for i in 0..<daysInMonths.count {
            print("\(months[i]) - \(daysInMonths[i])")
        }
//        #c
        let monthDay = [("Jan", 31), ("Feb", 28), ("Mar", 31), ("Apr", 30), ("May", 31), ("June", 30), ("Jule", 31), ("Aug", 31), ("Sep", 30), ("Oct", 31), ("Nov", 30),
            ("Dec", 31)]
        
        for (month, day) in monthDay {
            print("\(day) - \(month)")
        }
//        #d
        for (month, day) in monthDay.reversed() {
            print("\(day) - \(month)")
        }
//        #e
        let myBirthDay = (month1: "Oct", day1: 7)
        var summaData = 0
        
        for item in monthDay {
            if myBirthDay.month1 == item.0 {
                break
            }
                summaData += item.1
            }
        summaData += myBirthDay.day1
        print(summaData)
        
//        #3
        
        let alfavitEnglish = "adcdefghijklmnopqrstuvwxyz"
        var string: [String] = []
        
        for i in alfavitEnglish {
            string.insert(String(i), at: 0)
        }
        print(string)
        
//        #4
        let text = "The self-study lessons in this section are written and organised according to the levels of the Common European Framework of Reference for languages (CEFR). 11 There are different types of texts and interactive exercises that practise the reading skills you need to do well in your studies, to get ahead at work and to communicate in English in your free time. 1234"

        var summaText = (vowels: 0, consonants: 0, numbers: 0, symbols: 0)
    
        for i in text {
            switch i {
            
            case "e", "u", "y", "o", "i", "a", "E":
                summaText.vowels += 1
            case "T", "h", "s", "l", "f", "t", "d", "n", "c", "r", "w", "g", "v", "C", "F", "R", "p", "x", "k", "m":
                summaText.consonants += 1
            case "1", "2", "3", "4":
                summaText.numbers += 1
            case "-", ".", "(", ")", ",":
                summaText.symbols += 1
            default:
                break
            }
        }
        print("vowels - \(summaText.vowels), consonants - \(summaText.consonants), numbers - \(summaText.numbers), symbols - \(summaText.symbols)")
        
//        #5
        
        func reversed1(array1: [String]) -> [String] {
            var intem: [String] = []
            for i in array1 {
                intem.insert(String(i), at: 0)
            }
            return intem
        }
        func reversed2(array2 range: String...) -> [String] {
            var intem: [String] = []
            intem = reversed1(array1: range)
            return intem
        }
        let arrayOne: [String] = ["a","b","c","d","e","f","g","h"]
        print(reversed1(array1: arrayOne))
        print(reversed2(array2: "1","2","3","4"))
        
//        #6
         
        func func1(str: String) -> String {
            var returnStr = ""
            for char in news {
                switch char {
                case "0"..."9":
                    returnStr += number[Int(String(char))!]
                case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z":
                    returnStr += String(char).lowercased()
                case "a","e","i","o","u","y":
                    returnStr += String(char).uppercased()
                case " ":
                    returnStr += " "
                default:
                    break
                }
            }
            return returnStr
        }
        let number = ["zero","one","two","three","four","five","six","seven","eight","nine"]
        let news = """
            As a developer who has worked in React, Flutter and SwiftUI, it is always nice to see that how many SwiftUI features are inspired from existing platforms. All three major platforms (React, Flutter and SwiftUI) have adopted a declarative approach for building user interfaces. This means you can easily transfer your knowledge between React, Flutter and SwiftUI. 1 2 3 4 5 6 7 8 9.!
"""
        print(func1(str: news))
        
//        #7
        
        func numberMax(array: [Int]) -> Int? {
        
            var max = array[0]
            for value in array[1..<array.count] {
                if value > max {
                    max = value
                }
            }
            return (max)
        }
        let numbers = [11, 34, 99, 5, 18]
        
        print("\(numbers.max() ?? 0)")
        
//        #8 не получилось успеть, исправлю и сделаю правильно
        
        func numbersArray(num1: [Int]) -> [Bool] {
            
            var item = num1[0]
            
            for i in num1 {
                if item % 2 == 0 {
                    return ("четное\(num1)")
                } else {
                    return ("нечетное\(num1)")
                }
            }

        }

        
        let arrayNumbers = [12, 21, 32, 56, 101]
        print(numbersArray)
        
        
      
        
      
        
        
        
        
        
        
        
        
    }


}

