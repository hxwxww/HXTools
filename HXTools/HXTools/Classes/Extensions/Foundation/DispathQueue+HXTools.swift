//
//  DispathQueue+HXTools.swift
//  HXTools
//
//  Created by HongXiangWen on 2018/12/30.
//  Copyright © 2018年 WHX. All rights reserved.
//

import Foundation

extension DispatchQueue {
    
    private static var onceTokenTracker: [String] = []
    /// 保证整个生命周期只执行一次
    ///
    /// - Parameters:
    ///   - token: token
    ///   - block: 执行的代码块
    static func hx_once(_ token: String, block: () -> Void) {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        if onceTokenTracker.contains(token) {
            return
        }
        onceTokenTracker.append(token)
        block()
    }
    
    /// 延迟执行方法
    ///
    /// - Parameters:
    ///   - delay: 时间，秒数
    ///   - execute: 执行代码b块
    func after(_ delay: TimeInterval, execute: @escaping () -> Void) {
        asyncAfter(deadline: .now() + delay, execute: execute)
    }
    
}
