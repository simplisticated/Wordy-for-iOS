//
//  TextCase.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public enum TextCase {
    case allUpper
    case allLower
    case firstUpperNextLower
    case firstLowerNextUpper
    case alternating(firstUppercased: Bool)
}
