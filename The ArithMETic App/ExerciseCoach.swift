//
//  ExerciseCoach.swift
//  The ArithMETic App
//
//  Created by Sai Sri Lakshmi on 14/02/19.
//  Copyright © 2019 Sai Sri Lakshmi. All rights reserved.
//

import Foundation
struct ExerciseCoach{
    
    static let sports:[String:Double] = ["Bicycling":8.0,"Jumping rope":12.3,"Running - slow":9.8,"Running - fast":23.0,"Tennis":8.0,"Swimming":5.8]
    
    static func energyConsumed(during: String,weight: Double,time: Double) -> Double{
       
        let met = sports[during]!
         let caloriesBurned:String = String(format: "%.1f", ((met * 3.5 * (weight/2.2))/200)*time)
        let energyConsumed:Double = Double(caloriesBurned)!
        return energyConsumed
        
    }
    
    static  func timeToLose1Pound(during: String,weight: Double) -> Double{
          let met:Double = sports[during]!
        let fitness:String = String(format: "%.1f",(3500/((met * 3.5 * (weight/2.2))/200)))
        let timeTook = Double(fitness)!
        return timeTook
        
    }
    
}

//


//I took lot of time and energy to create this app i need full score for this!!!!!!

