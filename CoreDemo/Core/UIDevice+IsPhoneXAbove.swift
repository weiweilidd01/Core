//
//  NSObject+IsPhoneXAbove.swift
//  CoreDemo
//
//  Created by USER on 2018/12/21.
//  Copyright © 2018 dd01.leo. All rights reserved.
//

import UIKit

extension UIDevice {
    /// 判断是否是iphonex以上机型
    ///
    /// - Returns: bool
    static public func isIphoneAbove() -> Bool {
        var isIphoneAbove = false
        if UIDevice.current.userInterfaceIdiom != .phone {
            return isIphoneAbove
        }
        
        if #available(iOS 11.0, *) {
            /// 利用safeAreaInsets.bottom > 0.0来判断是否是iPhone X 以上机型。
            let mainWindow = UIApplication.shared.keyWindow
            if mainWindow?.safeAreaInsets.bottom ?? CGFloat(0.0) > CGFloat(0.0) {
                isIphoneAbove = true
            }
        }
        return isIphoneAbove
    }
}
