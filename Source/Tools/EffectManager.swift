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
                
                let substringBeforeSegment = segmentFinder.substring(before: change.segment)
                let substringFromSegment = segmentFinder.substring(from: change.segment)
                let substringAfterSegment = segmentFinder.substring(after: change.segment)
                
                let filteredSubstringFromSegment = change.effect.filteredText(from: substringFromSegment)
                
                resultText = substringBeforeSegment
                    + filteredSubstringFromSegment
                    + substringAfterSegment
            }
            
            return resultText
        }
    }
    
    // MARK: Public object methods
    
    public func apply(effect: Effect) -> Self {
        let segment = TextSegment(
            startIndex: 0,
            endIndex: self.sourceText.count - 1
        )
        let change = TextChange(
            effect: effect,
            segment: segment
        )
        self.changes.append(change)
        return self
    }
    
    public func apply(effect: Effect, startIndex: Int, endIndex: Int) -> Self {
        let segment = TextSegment(
            startIndex: startIndex,
            endIndex: endIndex
        )
        let change = TextChange(
            effect: effect,
            segment: segment
        )
        self.changes.append(change)
        return self
    }
    
    // MARK: Private object methods
    
}
