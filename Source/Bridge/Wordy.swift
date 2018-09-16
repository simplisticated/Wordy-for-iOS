//
//  Wordy.swift
//  Wordy
//
//  Created by Igor Matyushkin on 16.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public class Wordy {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    public class func effects(for sourceText: String) -> EffectManager {
        return EffectManager(sourceText: sourceText)
    }
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    fileprivate init() {
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
}
