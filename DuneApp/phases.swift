//
//  phases.swift
//  DuneApp
//
//  Created by Quinn Loach on 7/23/23.
//

import Foundation
import UIKit


class setUpPhaseInfo{
    var atreidesCard: TreacheryCard
    var fremTroops: [Int]
    var stormMovement: Int
    
    init(atreidesCard: TreacheryCard, fremTroops: [Int], stormMovement: Int){
        self.atreidesCard = atreidesCard
        self.fremTroops = fremTroops
        self.stormMovement = stormMovement
        
    }
    
    required init? (coder:NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}


