//
//  Result.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

/// Enum with response result
///
/// - success: success result
/// - failure: failure result
enum Result<T> {
    case success(T)
    case failure(String)
}
