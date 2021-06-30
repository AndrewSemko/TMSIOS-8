//
//  HomeWorkDZ6.swift
//  DZ6
//
//  Created by Andrey  on 30.06.21.
//

import Foundation
// Home work
//  #1

class Student {
    
    var name: String
    var surname: String
    var yearOfBirth: Int
    var averageScore: Int
    
    init(name: String, surname: String, yearOfBirth: Int, averageScore: Int) {
        self.name = name
        self.surname = surname
        self.yearOfBirth = yearOfBirth
        self.averageScore = averageScore
        
    }
}
    var student1 = Student(name: "Alex", surname: "Ivanov", yearOfBirth: 2002, averageScore: 7)
    var student2 = Student(name: "Anton", surname: "Petrov", yearOfBirth: 2003, averageScore: 10)
    var student3 = Student(name: "Roman", surname: "Sidorov", yearOfBirth: 1999, averageScore: 4)
    var student4 = Student(name: "Andrey", surname: "Semko", yearOfBirth: 2000, averageScore: 8)

//  #2

class GroupOfStudents {
    
    var bandName: String
    
    init(bandName: String) {
        self.bandName = bandName
    }
    var group = ("TMSIOS-8")
    var jurnal = [student1,student2,student3,student4]
    
//  #3
    func new1(array: [Student]) {
        var number = 0
        for i in array {
            number += 1
            print("\(number): \(i.name) \(i.surname),  year of birth \(i.yearOfBirth), average score \(i.averageScore);")
        }
    }
    
    func new() {
    print("Number group - № \(group)")
        }

//    #4
    var score = 8
  
    
        }
    
//        for i in student.sorted(by: { $0.averageScore < $1.averageScore }) {
//           if let item
//            print("\(i)")
//        }
//
//
        
    }
        


    
    
    


}

