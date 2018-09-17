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
        let rules = TransliterationStore().rules(forTransliterationFrom: self.sourceLanguage, to: self.targetLanguage)
        var resultText = String(sourceText)
        
        for rule in rules {
            if rule.replaceable.count == 1 {
                resultText = resultText.replacingOccurrences(
                    of: EffectManager(sourceText: rule.replaceable)
                        .apply(effect: CaseEffect(textCase: .allUpper))
                        .result,
                    with: EffectManager(sourceText: rule.replacement)
                        .apply(effect: CaseEffect(textCase: .firstUpperNextLower))
                        .result
                )
            } else {
                resultText = resultText.replacingOccurrences(
                    of: EffectManager(sourceText: rule.replaceable)
                        .apply(effect: CaseEffect(textCase: .allUpper))
                        .result,
                    with: EffectManager(sourceText: rule.replacement)
                        .apply(effect: CaseEffect(textCase: .allUpper))
                        .result
                )
                
                resultText = resultText.replacingOccurrences(
                    of: EffectManager(sourceText: rule.replaceable)
                        .apply(effect: CaseEffect(textCase: .firstUpperNextLower))
                        .result,
                    with: EffectManager(sourceText: rule.replacement)
                        .apply(effect: CaseEffect(textCase: .firstUpperNextLower))
                        .result
                )
                
                resultText = resultText.replacingOccurrences(
                    of: EffectManager(sourceText: rule.replaceable)
                        .apply(effect: CaseEffect(textCase: .firstLowerNextUpper))
                        .result,
                    with: EffectManager(sourceText: rule.replacement)
                        .apply(effect: CaseEffect(textCase: .firstLowerNextUpper))
                        .result
                )
            }
            
            resultText = resultText.replacingOccurrences(
                of: EffectManager(sourceText: rule.replaceable)
                    .apply(effect: CaseEffect(textCase: .allLower))
                    .result,
                with: EffectManager(sourceText: rule.replacement)
                    .apply(effect: CaseEffect(textCase: .allLower))
                    .result
            )
        }
        
        return resultText
    }
    
    // MARK: Private object methods
    
}
