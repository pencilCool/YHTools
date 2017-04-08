//
//  FlashlightViewController.swift
//  YHTools
//
//  Created by tangyuhua on 2017/4/8.
//  Copyright © 2017年 tangyuhua. All rights reserved.
//

import UIKit
import SwiftyTimer
final class FlashlightViewController: UIViewController {
    

    private var isHighlight = true
    var timer: Timer!
    
    
    @IBAction func start(_ sender: Any) {
        timer.start(modes: .defaultRunLoopMode)
    }
    
    
    @IBAction func dismiss(_ sender: Any) {
        timer.invalidate()
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.new(every: YHConfig.flashlightInterval) {
           self.update()
        }
     
        
        
    }
    

    
    func update() -> Void {
        self.view.backgroundColor = isHighlight ? UIColor.yhFlashlightColor(): UIColor.white
        isHighlight = !isHighlight
    }
}
