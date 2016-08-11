//
//  ViewController.swift
//  errorHandling
//
//  Created by Rebecca Bartels on 8/11/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let home = House()
        
        home.hasHolesinRoof = false
        home.foundationStatus = "SOLID"
        //uiart controller 
        //uialert action
    
        
        do {
            try home.homeInspection()
        }catch{
            
            print(error)
        }
        print(home.inspectionPassFail)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}