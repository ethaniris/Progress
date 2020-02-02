//
//  ViewController.swift
//  Progress
//
//  Created by Ethan on 2020/2/2.
//  Copyright © 2020 playplay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var totalProgress = Progress()
    var childProgress1 = Progress()
    var childProgress2 = Progress()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        totalProgress = Progress(totalUnitCount: 100)
        childProgress1 = Progress(totalUnitCount: 10)
        childProgress2 = Progress(totalUnitCount: 10)
        totalProgress.addChild(childProgress1, withPendingUnitCount: 50)
        totalProgress.addChild(childProgress2, withPendingUnitCount: 50)
        
        work1()
        work2()

    }
    
    func work1(){
        
        
        for i in Array(1...10){
            
            if childProgress1.isCancelled{break}
            sleep(1)
            childProgress1.completedUnitCount = Int64(i)
            print(totalProgress.fractionCompleted)
        }
    }
    
    func work2(){
        
        
        
        for i in Array(1...10){
            
            if childProgress2.isCancelled{break}
            sleep(UInt32(0.2))
            childProgress2.completedUnitCount = Int64(i)
            print(totalProgress.fractionCompleted)
        }
        
    }
}

