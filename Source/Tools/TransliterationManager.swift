//
//  TransliterationManager.swift
//  Wordy
//
//  Created by Igor Matyushkin on 17.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public class TransliterationManager {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(from sourceLanguage: Language, to targetLanguage: Language) {
        self.sourceLanguage = sourceLanguage
        self.targetLanguage = targetLanguage
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    public fileprivate(set) var sourceLanguage: Language
    
    public fileprivate(set) var targetLanguage: Language
    
    // MARK: Public object methods
    
    public func result(for sourceText: String) -> String {
        return ""
    }
    
    // MARK: Private object methods
    
}
