//
//  SegmentFinder.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

internal class SegmentFinder {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(sourceText: String) {
        self.sourceText = sourceText
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var sourceText: String
    
    // MARK: Public object methods
    
    public func substring(before location: SubstringLocation) -> String {
        guard location.startIndex > 0 else {
            return ""
        }
        
        let startIndex = self.sourceText.startIndex
        let endIndex = self.sourceText.index(self.sourceText.startIndex, offsetBy: location.startIndex - 1)
        return String(self.sourceText[startIndex...endIndex])
    }
    
    public func substring(from location: SubstringLocation) -> String {
        let startIndex = self.sourceText.index(self.sourceText.startIndex, offsetBy: location.startIndex)
        let endIndex = self.sourceText.index(self.sourceText.startIndex, offsetBy: location.endIndex)
        return String(self.sourceText[startIndex...endIndex])
    }
    
    public func substring(after location: SubstringLocation) -> String {
        guard location.endIndex < self.sourceText.count - 1 else {
            return ""
        }
        
        let startIndex = self.sourceText.index(self.sourceText.startIndex, offsetBy: location.endIndex + 1)
        let endIndex = self.sourceText.index(self.sourceText.endIndex, offsetBy: -1)
        return String(self.sourceText[startIndex...endIndex])
    }
    
    // MARK: Private object methods
    
}
