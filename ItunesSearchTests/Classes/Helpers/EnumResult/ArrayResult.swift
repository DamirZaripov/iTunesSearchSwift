//
//  ArrayResult.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

/// Enum with response result
///
/// - success: success result with array of entity
/// - failure: failure result of response
enum ArrayResult<T> {
    case success([T])
    case failure(String)
}
