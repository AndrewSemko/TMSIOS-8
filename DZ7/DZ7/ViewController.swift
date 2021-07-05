//
//  ViewController.swift
//  DZ7
//
//  Created by Andrey  on 4.07.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
//        let engine = Engine(v: 2.0, weight: 360, maxKrut: 700, power: 500, type: "Disel")
//        let trans = Trans(type: "Robot", count: 6)
//
//        let car = Car(engine: engine,trans: trans, weight: 2500, color: "Red", type: "coupe")
//        let pricep = Pricep(maxweight: 5000, height: 3, countWhiless: 16)
//
//        let manCar = ManCar(pricep: pricep, engine: engine, trans: trans, weight: 10000, color: "red", type: "Грузовой")
//
//
//        let bmwCar:BMWcar = BMWcar(engine: engine,trans: trans, weight: 10000, color: "white", type: "123")
//        let ladaCar:LADAcar = LADAcar(engine: engine,trans: trans, weight: 10000, color: "white", type: "123")
//        let mersCar:MERScar = MERScar(engine: engine,trans: trans, weight: 10000, color: "white", type: "123")
//
//        let mass: [Car] = [manCar,bmwCar,ladaCar,mersCar]
//
//        for car in mass {
//            if let value = car as? BMWcar {
//                value
//                print(car is BMWcar)
//                print(car is Car)
//
//            }
            
            
            
            
//            car.go()
//        }
//
//        HOME WORK
//        #1
        
//        let artist = Artist (name: "Oleg", lastName: "Tabokov")
        let dancer = Dancer (name: "Alex", lastName: "Petrov")
        let singer = Singer (name: "Anton", lastName: "Ivanov")
        let artistPaint = ArtistPaint (name: "Па́бло", lastName: "Руи́с")
        
        let array: [Artist] = [dancer,singer,artistPaint]
//        for artist in array {
//            if artist is Dancer {
//
//            }
//            if artist is Singer {
//
//            }
//            if artist is ArtistPaint {
//
//}
//            artist.speech()
//}
//        или так:
        for artist in array {
            artist.speech()
        }
            
//        #2
        
        let numberOfPassengers = 300
        let distance = 1000
//        let vehicle = Vehicle(speed: Int, capacity: Int, cost: Int)
        let plane = Plane(speed: 800, capacity: 250, cost: 100)
        let ship = Ship(speed: 60, capacity: 25, cost: 40)
        let helicopter = Helicopter(speed: 400, capacity: 25, cost: 40)
        let car1 = Car1(speed: 100, capacity: 5, cost: 25)
        
        let arrayVehicle = [plane,ship,helicopter,car1]
        
        for i in arrayVehicle {
//            if let item = i as? Plane {
//
//            }
//           if let item = i as? Ship {
//
//            }
//            if let item = i as? Helicopter {
//
//            }
//           if let item = i as? Car1 {
//
//            }
            print(i.shipping(numberOfPassengers: 200, distance: 5000))
        }
//
//        #3
        
        
        let human1 = Human()
        let human2 = Human()
        let crocodile1 = Crocodile()
        let crocodile2 = Crocodile()
        let monkey1 = Monkey()
        let monkey2 = Monkey()
        let dog1 = Dog()
        let dog2 = Dog()
        let giraffe1 = Giraffe()
        let giraffe2 = Giraffe()

        let creature: [Creature] = [human1,human2,crocodile1,crocodile2,dog1,dog2,monkey1,monkey2,giraffe1,giraffe2]
        
        var liveA = 0
        var creepyA = 0
        var legsA = 0
        var animalA = 0
   
        for i in creature {
            if i.live == true {
                liveA += 1
            }
            if i.animal == true{
                animalA += 1
            }
            if i.creepy == true {
                creepyA += 1
            }
            if i.legs == true {
                legsA += 1
            }
        }
      print("\(liveA), \(creepyA), \(legsA), \(animalA)")
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
   

}

