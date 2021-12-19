//
//  main.swift
//  IceCream
//
//  Created by kio on 2021/12/07.
//

import Foundation

// iceCream Order
let fristIceCream = IceCream(lengthOfIceCream: 6, IceCreamBody: "|#$%&&%$#|", topping: "*", lengthOfIceCreamBar: 3)
let secondIceCream = IceCream(lengthOfIceCream: 8, IceCreamBody: "***", topping: "#", lengthOfIceCreamBar: 3)
let thirdIceCream = IceCream(lengthOfIceCream: 6, IceCreamBody: "|0|", lengthOfIceCreamBar: 3)

fristIceCream.makeIceCream()
secondIceCream.makeIceCream()
thirdIceCream.makeIceCream()
