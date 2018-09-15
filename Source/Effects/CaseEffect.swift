//
//  CaseEffect.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public class CaseEffect {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(textCase: TextCase) {
        self.textCase = textCase
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var textCase: TextCase
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
}

extension CaseEffect: Effect {
    
    public func filteredText(from sourceText: String) -> String {
        switch self.textCase {
        case .allUpper:
            return sourceText.uppercased()
        case .allLower:
            return sourceText.lowercased()
        case .firstUpperNextLower:
            if sourceText.isEmpty {
                return ""
            } else {
                let firstLetterStartIndex = sourceText.startIndex
                let firstLetterLastIndex = sourceText.startIndex
                let firstLetter = String(sourceText[firstLetterStartIndex...firstLetterLastIndex])
                
                var otherText = ""
                
                if sourceText.count > 1 {
                    let otherTextStartIndex = sourceText.index(sourceText.startIndex, offsetBy: 1)
                    let otherTextEndIndex = sourceText.index(sourceText.endIndex, offsetBy: -1)
                    otherText = String(sourceText[otherTextStartIndex...otherTextEndIndex])
                }
                
                return firstLetter.uppercased()
                    + otherText.lowercased()
            }
        case .firstLowerNextUpper:
            if sourceText.isEmpty {
                return ""
            } else {
                let firstLetterStartIndex = sourceText.startIndex
                let firstLetterLastIndex = sourceText.startIndex
                let firstLetter = String(sourceText[firstLetterStartIndex...firstLetterLastIndex])
                
                var otherText = ""
                
                if sourceText.count > 1 {
                    let otherTextStartIndex = sourceText.index(sourceText.startIndex, offsetBy: 1)
                    let otherTextEndIndex = sourceText.index(sourceText.endIndex, offsetBy: -1)
                    otherText = String(sourceText[otherTextStartIndex...otherTextEndIndex])
                }
                
                return firstLetter.lowercased()
                    + otherText.uppercased()
            }
        case .alternating(let firstUppercased):
            if sourceText.isEmpty {
                return ""
            } else {
                var filteredText = ""
                let textLength = sourceText.count
                
                for letterIndex in 0..<textLength {
                    let sourceLetterStringIndex = sourceText.index(sourceText.startIndex, offsetBy: letterIndex)
                    let sourceLetter = String(sourceText[sourceLetterStringIndex...sourceLetterStringIndex])
                    
                    let isEvenLetterIndex = letterIndex % 2 == 0
                    let shouldMakeLetterUppercased = (isEvenLetterIndex && firstUppercased)
                        || (!isEvenLetterIndex && !firstUppercased)
                    let resultLetter = shouldMakeLetterUppercased ? sourceLetter.uppercased() : sourceLetter.lowercased()
                    filteredText += resultLetter
                }
                
                return filteredText
            }
        }
    }
    
}
