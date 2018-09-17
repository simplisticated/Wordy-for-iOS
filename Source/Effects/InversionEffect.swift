//
//  InversionEffect.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public class InversionEffect: Effect {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public override init() {
        super.init()
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    public override func filteredText(from sourceText: String) -> String {
        var resultText = ""
        
        for letterIndex in stride(from: sourceText.count - 1, through: 0, by: -1) {
            let letterStringIndex = sourceText.index(sourceText.startIndex, offsetBy: letterIndex)
            let letter = String(sourceText[letterStringIndex...letterStringIndex])
            resultText += letter
        }
        
        return resultText
    }
    
    // MARK: Private object methods
    
}
