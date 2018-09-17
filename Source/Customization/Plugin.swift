//
//  Plugin.swift
//  Wordy
//
//  Created by Igor Matyushkin on 17.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

open class Plugin {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public required init(sourceText: String) {
        self.sourceText = sourceText
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    public fileprivate(set) var sourceText: String
    
    // MARK: Public object methods
    
    open func result() -> String {
        return ""
    }
    
    // MARK: Private object methods
    
}
