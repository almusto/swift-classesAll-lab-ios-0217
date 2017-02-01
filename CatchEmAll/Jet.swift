//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {


  override func climb() {
    if inFlight == true {
      let newAltitude = altitude + maxAltitude/5
      if newAltitude > maxAltitude {
        altitude = maxAltitude
      } else {
        altitude = newAltitude
      }
      self.decelerate()
    }
  }

  override func dive() {
    if altitude > 0 {
      let newAltitude = altitude - maxAltitude/5
      if newAltitude < 0 {
        altitude = 0
      } else {
        altitude = newAltitude
      }
      self.accelerate()
    }
  }

  func afterburner() {
    if inFlight == true && speed == maxSpeed {
      speed = maxSpeed*2
    }
  }
}

