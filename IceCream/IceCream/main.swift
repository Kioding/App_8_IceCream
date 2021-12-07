//
//  main.swift
//  IceCream
//
//  Created by kio on 2021/12/07.
//

import Foundation

class IceCream {
    var lengthOfIceCream: Int
    var IceCreamBody: String
    var topping: String
    var lengthOfIceCreamBar: Int
    
    init(lengthOfIceCream:Int, IceCreamBody: String, topping: String = " ", lengthOfIceCreamBar: Int) {
        self.lengthOfIceCream = lengthOfIceCream
        self.IceCreamBody = IceCreamBody
        self.topping = topping
        self.lengthOfIceCreamBar = lengthOfIceCreamBar
    }
    
    func drawPartOfIceCream() {
        for _ in 1...lengthOfIceCream {
            print(" \(IceCreamBody)")
        }
    }
    
    func drawPartOfIceCreamBar() {
        for _ in 1...lengthOfIceCreamBar {
            print(" | |")
        }
    }
}

let OrderedIceCream = IceCream(lengthOfIceCream: 10, IceCreamBody: "***", topping: " ", lengthOfIceCreamBar: 4)

OrderedIceCream.drawPartOfIceCream()
OrderedIceCream.drawPartOfIceCreamBar()
