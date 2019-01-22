//
//  TestController.swift
//  CoreDemo
//
//  Created by USER on 2018/12/28.
//  Copyright © 2018 dd01.leo. All rights reserved.
//

import UIKit

class TestController: UIViewController {
    
    // MARK: -- IBOutlet && UI
    @IBOutlet weak var contentView: UIView!

    // MARK: -- public property
    var age: Int?
    
    //MARK: -- privite property
    private var name: String?
    
    //MARK: -- override method
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


// MARK: - public methods
extension TestController {
    
}

// MARK: - private methods
extension TestController {
    
}

// MARK: - delegate,不同的delegate分开
extension TestController {
    
}

// MARK: - Actions & Notifications
extension TestController {
    
}
