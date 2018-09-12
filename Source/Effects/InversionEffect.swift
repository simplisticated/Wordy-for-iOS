//
//  InversionEffect.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public class InversionEffect {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init() {
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
}

extension InversionEffect: Effect {
    
    public func filteredText(from sourceText: String) -> String {
        var resultText = ""
        
        for letterIndex in stride(from: sourceText.count - 1, through: 0, by: -1) {
            let letterStringIndex = sourceText.index(sourceText.startIndex, offsetBy: letterIndex)
            let letter = String(sourceText[letterStringIndex...letterStringIndex])
            resultText += letter
        }
        
        return resultText
    }
}
