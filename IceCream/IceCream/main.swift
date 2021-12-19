//
//  main.swift
//  IceCream
//
//  Created by kio on 2021/12/07.
//

import Foundation

class IceCream {
    var lengthOfIceCream: Int
    var iceCreamBody: String
    var topping: String
    var lengthOfIceCreamBar: Int
    
    init(lengthOfIceCream:Int, IceCreamBody: String, topping: String = " ", lengthOfIceCreamBar: Int) {
        self.lengthOfIceCream = lengthOfIceCream
        self.iceCreamBody = IceCreamBody
        self.topping = topping
        self.lengthOfIceCreamBar = lengthOfIceCreamBar
    }
    
    func makeIceCream() {
        showInformationOfIceCream()
        drawPartOfIceCream()
        drawPartOfIceCreamBar()
    }
    
    func showInformationOfIceCream() {
        print("""
              <정보>
              길이: \(lengthOfIceCream)
              몸통: \(iceCreamBody)
              토핑: \(topping)
              막대길이: \(lengthOfIceCreamBar)
              
              """)
    }
    
    func drawPartOfIceCream() {
        for index in 0..<lengthOfIceCream {
            if index % 2 == 0 {
                print("\(self.topping+self.iceCreamBody)")
            } else {
                print(" \(self.iceCreamBody+self.topping)")
            }
        }
    }
    
    func drawPartOfIceCreamBar() {
        let spacing: Int = self.iceCreamBody.count / 2
        var spacingLength: String = ""
        let shapeOfIceCreamBar: String = "| |"
        
        for _ in 0..<spacing {
            spacingLength += " "
        }
        
        for _ in 0..<self.lengthOfIceCreamBar {
            print("\(spacingLength+shapeOfIceCreamBar)")
        }
    }
}

// iceCream Sample
let OrderedIceCream = IceCream(lengthOfIceCream: 10, IceCreamBody: "|#$%&&%$#|", topping: "*", lengthOfIceCreamBar: 4)

OrderedIceCream.makeIceCream()
