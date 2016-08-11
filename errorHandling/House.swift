//
//  House.swift
//  errorHandling
//
//  Created by Rebecca Bartels on 8/11/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import Foundation

class House {
    
    var hasHolesinRoof: Bool?
    var foundationStatus: String?
    private (set) var inspectionPassFail: String?
    
    enum InspectionFail: ErrorType {
        
       case HoleyRoof
       case PoorFoundation(condition: String)
        
        
        
    }
    
    func homeInspection()throws{
        
        if hasHolesinRoof == true || hasHolesinRoof == nil {
            inspectionPassFail = "Fail"
            print("Fix those holes in the roof")
            throw InspectionFail.HoleyRoof
        }else if foundationStatus != "SOLID" || foundationStatus == nil {
            inspectionPassFail = "Fail"
            print("More concrete please")
            throw InspectionFail.PoorFoundation(condition: "Concrete")
        }
        
        inspectionPassFail = "Pass"
    }
  
    
}




