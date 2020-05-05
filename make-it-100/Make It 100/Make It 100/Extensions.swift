//
//  Extensions.swift
//  Make It 100
//
//  Created by Raul (Private) on 05.05.20.
//  Copyright © 2020 Raul Sulaimanov. All rights reserved.
//

import Foundation

extension String {
    static func local(_ key: String) -> String { return NSLocalizedString(key, comment: "") }
}
