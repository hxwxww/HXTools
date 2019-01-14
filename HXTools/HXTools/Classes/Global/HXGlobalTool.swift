//
//  HXGlobalTool.swift
//  HXTools
//
//  Created by HongXiangWen on 2018/12/26.
//  Copyright © 2018年 WHX. All rights reserved.
//

import UIKit

public struct HXGlobalTool {
    
    /// 获取缓存文件路径
    ///
    /// - Returns: 结果
    public static func cachesDirectory() -> String {
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).last!
    }
    
    /// 获取持久文件路径
    ///
    /// - Returns: 结果
    public func documentDirectory() -> String {
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last!
    }
    
    /// 获取临时文件路径
    ///
    /// - Returns: 结果
    public func tmpDirectory() -> String {
        return NSTemporaryDirectory()
    }

}
