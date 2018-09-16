//
//  EffectManager.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public class EffectManager {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(sourceText: String) {
        self.sourceText = sourceText
        self.changes = []
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    fileprivate var sourceText: String
    
    fileprivate var changes: [TextChange]
    
    public var result: String {
        get {
            var resultText = String(self.sourceText)
            
            for change in self.changes {
                let segmentFinder = SegmentFinder(sourceText: resultText)
                
                let substringBeforeSelectedLocation = segmentFinder.substring(before: change.location)
                let substringFromSelectedLocation = segmentFinder.substring(from: change.location)
                let substringAfterSelectedLocation = segmentFinder.substring(after: change.location)
                
                let filteredSubstringFromSelectedLocation = change.effect.filteredText(from: substringFromSelectedLocation)
                
                resultText = substringBeforeSelectedLocation
                    + filteredSubstringFromSelectedLocation
                    + substringAfterSelectedLocation
            }
            
            return resultText
        }
    }
    
    // MARK: Public object methods
    
    public func apply(effect: Effect) -> Self {
        let location = SubstringLocation(
            startIndex: 0,
            endIndex: self.sourceText.count - 1
        )
        let change = TextChange(
            effect: effect,
            location: location
        )
        self.changes.append(change)
        return self
    }
    
    public func apply(effect: Effect, startIndex: Int, endIndex: Int) -> Self {
        let location = SubstringLocation(
            startIndex: startIndex,
            endIndex: endIndex
        )
        let change = TextChange(
            effect: effect,
            location: location
        )
        self.changes.append(change)
        return self
    }
    
    // MARK: Private object methods
    
}
