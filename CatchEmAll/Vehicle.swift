//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
  let name : String
  let weight : Double
  let maxSpeed : Double
  var speed : Double = 0
  var heading : Double = 0

  init(name : String, weight : Double, maxSpeed : Double) {
    self.name = name
    self.weight = weight
    self.maxSpeed = maxSpeed
  }

  func goFast() {
    speed = maxSpeed
  }

  func halt() {
    speed = 0
  }

  func accelerate() {
    //    let newSpeed = speed + maxSpeed/10
    //    if newSpeed > maxSpeed {
    //      speed = maxSpeed
    //    } else {
    //      speed = newSpeed
    //    }
    speed += maxSpeed/10
    if speed > maxSpeed {
      speed = maxSpeed
    }
  }

  func decelerate() {
    let newSpeed = speed - maxSpeed/10
    if newSpeed < 0 {
      speed = 0
    } else {
      speed = newSpeed
    }
  }

  func turnRight() {
    if speed > 0 {
      heading = (heading + 90).truncatingRemainder(dividingBy: 360)
      speed = speed/2
    }
  }

  func turnLeft() {
    if speed > 0 {
      heading = (heading + 270).truncatingRemainder(dividingBy: 360)
      speed = speed/2
    }
  }
  
  
  
}

