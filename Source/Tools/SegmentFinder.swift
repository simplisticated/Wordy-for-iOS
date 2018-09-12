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
    
    public func substring(before segment: TextSegment) -> String {
        return ""
    }
    
    public func substring(from segment: TextSegment) -> String {
        return ""
    }
    
    public func substring(after segment: TextSegment) -> String {
        return ""
    }
    
    // MARK: Private object methods
    
}
