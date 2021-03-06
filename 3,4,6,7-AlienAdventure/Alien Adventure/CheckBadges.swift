//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        for type in requestTypes{
            if !(badges.contains{$0.requestType == type}){
                return false
            }
        }
        
        return true
    }
    
}
