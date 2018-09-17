//
//  RotationEffect.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public class RotationEffect: Effect {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(rotation: TextRotation, caseSensitive: Bool = true) {
        self.rotation = rotation
        self.caseSensitive = caseSensitive
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var rotation: TextRotation
    
    fileprivate var caseSensitive: Bool
    
    // MARK: Public object methods
    
    public override func filteredText(from sourceText: String) -> String {
        var filteredText = ""
        let textLength = sourceText.count
        
        let rotationStore = RotationStore()
        let ruleCount = rotationStore.ruleCount
        
        for letterIndex in 0..<textLength {
            let sourceLetterStringIndex = sourceText.index(sourceText.startIndex, offsetBy: letterIndex)
            let sourceLetter = String(sourceText[sourceLetterStringIndex...sourceLetterStringIndex])
            let isUppercase = CharacterSet.uppercaseLetters.contains(UnicodeScalar(sourceLetter)!)
            var filteredLetter = String(sourceLetter)
            
            for ruleIndex in 0..<ruleCount {
                let rule = rotationStore.rule(forIndex: ruleIndex)
                let isNormal = sourceLetter.lowercased() == rule.normal.lowercased()
                let isRotated = sourceLetter.lowercased() == rule.rotated.lowercased()
                
                switch self.rotation {
                case .normal:
                    if isRotated {
                        filteredLetter = String(rule.normal)
                    }
                    break
                case .upsideDown:
                    if isNormal {
                        filteredLetter = String(rule.rotated)
                    }
                    break
                case .inverted:
                    if isNormal {
                        filteredLetter = rule.rotated
                    } else if isRotated {
                        filteredLetter = rule.normal
                    }
                    break
                }
                
                let foundAppropriateRule = isNormal || isRotated
                
                if foundAppropriateRule {
                    break
                }
            }
            
            if self.caseSensitive {
                filteredLetter = isUppercase ? filteredLetter.uppercased() : filteredLetter.lowercased()
            }
            
            filteredText += filteredLetter
        }
        
        return filteredText
    }
    
    // MARK: Private object methods
    
}
