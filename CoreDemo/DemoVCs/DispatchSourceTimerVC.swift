//
//  DispatchSourceTimerVC.swift
//  CoreDemo
//
//  Created by weiwei.li on 2019/1/8.
//  Copyright © 2019 dd01.leo. All rights reserved.
//

import UIKit

class DispatchSourceTimerVC: UIViewController {

    @IBOutlet weak var lab: UILabel!
    
    var total: Int = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //无需再去管理timer生命周期
        DispatchSource.dispatchTimer(timeInterval: 1) {[weak self] (timer) in
            print("~~~~~~~~\(String(describing: self?.total))~~~~~~~~~~~~")
            guard let strongSelf = self else {
                timer?.cancel()
                return
            }
            
            strongSelf.total = strongSelf.total - 1
            
            if  strongSelf.total < 0 {
                timer?.cancel()
                return
            }
            strongSelf.lab.text = "\(strongSelf.total)"
        }
    }

}
