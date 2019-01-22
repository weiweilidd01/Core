//
//  ViewController.swift
//  CoreDemo
//
//  Created by USER on 2018/12/21.
//  Copyright © 2018 dd01.leo. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UITableViewController {

    var titles: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        titles = [
            "1、设置navigationItem & 导航栏渐变",
            "2、DispatchSourceTimer",
        ]
        
        print(UIDevice.isIphoneAbove())
        print(Date())
        print(Date().day)
        print(Date().month)
        print(Date().year)
        print(Date().hour)
        print(Date().minute)
        print(Date().second)
        print(Date().isLeapYear)
        print(Date().daysInYear)
        let date = Date()
        print(date.weekOfYear)
        print(date.weeksOfMonth)
        print(date.begindayOfMonth)
        print(date.lastdayOfMonth)
        print(date.dateAfterDay(10))
        print(date.dateAfterMonth(10))
        print(date.dateAfterYears(10))
        print(date.dateAfterHours(24))

        print(date.weekday)
        print(date.isSameDay(anotherDate: date.dateAfterDay(1)))
        print(date.dateAfterDay(1).isToday)
        print(date.formatYMD)
        
        print(date.stringWithFormat("YYYY/MM/dd HH:mm:ss"))

        print(Date.dateWithString("2019/01/21 18:58:10", format: "YYYY/MM/dd HH:mm:ss"))
        print(date.ymdHmsFormat)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let title = titles?[indexPath.row]
        cell.textLabel?.text = "\(title ?? "")"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let vc = TableViewController()
            navigationController?.pushViewController(vc, animated: true)
            return
        }
    
        if indexPath.row == 1 {
            let vc = DispatchSourceTimerVC()
            navigationController?.pushViewController(vc, animated: true)
            return
        }
        
     
    }
}


