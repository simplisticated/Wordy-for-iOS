//
//  TransliterationStore.swift
//  Wordy
//
//  Created by Igor Matyushkin on 17.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

internal class TransliterationStore {
    
    // MARK: Class variables & properties
    
    fileprivate static let englishToRussianRules = [
        
        // 5 letters
        TransliterationRule(
            replaceable: "aught",
            replacement: "от"
        ),
        
        // 4 letters
        TransliterationRule(
            replaceable: "ould",
            replacement: "уд"
        ),
        TransliterationRule(
            replaceable: "ound",
            replacement: "аунд"
        ),
        TransliterationRule(
            replaceable: "eigh",
            replacement: "эй"
        ),
        
        // 3 letters
        TransliterationRule(
            replaceable: "igh",
            replacement: "ай"
        ),
        TransliterationRule(
            replaceable: "eer",
            replacement: "иа"
        ),
        TransliterationRule(
            replaceable: "our",
            replacement: "ауэ"
        ),
        TransliterationRule(
            replaceable: "oor",
            replacement: "о"
        ),
        TransliterationRule(
            replaceable: "wor",
            replacement: "ё"
        ),
        TransliterationRule(
            replaceable: "air",
            replacement: "эа"
        ),
        TransliterationRule(
            replaceable: "oar",
            replacement: "о"
        ),
        
        // 2 letters
        TransliterationRule(
            replaceable: "ee",
            replacement: "и"
        ),
        TransliterationRule(
            replaceable: "ea",
            replacement: "и"
        ),
        TransliterationRule(
            replaceable: "oo",
            replacement: "у"
        ),
        TransliterationRule(
            replaceable: "th",
            replacement: "т"
        ),
        TransliterationRule(
            replaceable: "sh",
            replacement: "ш"
        ),
        TransliterationRule(
            replaceable: "ch",
            replacement: "ч"
        ),
        TransliterationRule(
            replaceable: "ph",
            replacement: "ф"
        ),
        TransliterationRule(
            replaceable: "ck",
            replacement: "к"
        ),
        TransliterationRule(
            replaceable: "ng",
            replacement: "нг"
        ),
        TransliterationRule(
            replaceable: "wh",
            replacement: "в"
        ),
        TransliterationRule(
            replaceable: "wr",
            replacement: "р"
        ),
        TransliterationRule(
            replaceable: "qu",
            replacement: "кв"
        ),
        TransliterationRule(
            replaceable: "all",
            replacement: "ол"
        ),
        TransliterationRule(
            replaceable: "ai",
            replacement: "эй"
        ),
        TransliterationRule(
            replaceable: "ay",
            replacement: "эй"
        ),
        TransliterationRule(
            replaceable: "oi",
            replacement: "ой"
        ),
        TransliterationRule(
            replaceable: "oy",
            replacement: "ой"
        ),
        TransliterationRule(
            replaceable: "ow",
            replacement: "оу"
        ),
        TransliterationRule(
            replaceable: "ou",
            replacement: "оу"
        ),
        TransliterationRule(
            replaceable: "ew",
            replacement: "ю"
        ),
        TransliterationRule(
            replaceable: "aw",
            replacement: "о"
        ),
        TransliterationRule(
            replaceable: "wa",
            replacement: "во"
        ),
        TransliterationRule(
            replaceable: "au",
            replacement: "о"
        ),
        TransliterationRule(
            replaceable: "gh",
            replacement: "ф"
        ),
        
        // 1 letter
        TransliterationRule(
            replaceable: "a",
            replacement: "э"
        ),
        TransliterationRule(
            replaceable: "b",
            replacement: "б"
        ),
        TransliterationRule(
            replaceable: "c",
            replacement: "к"
        ),
        TransliterationRule(
            replaceable: "d",
            replacement: "д"
        ),
        TransliterationRule(
            replaceable: "e",
            replacement: "э"
        ),
        TransliterationRule(
            replaceable: "f",
            replacement: "ф"
        ),
        TransliterationRule(
            replaceable: "g",
            replacement: "г"
        ),
        TransliterationRule(
            replaceable: "h",
            replacement: "х"
        ),
        TransliterationRule(
            replaceable: "i",
            replacement: "и"
        ),
        TransliterationRule(
            replaceable: "j",
            replacement: "дж"
        ),
        TransliterationRule(
            replaceable: "k",
            replacement: "к"
        ),
        TransliterationRule(
            replaceable: "l",
            replacement: "л"
        ),
        TransliterationRule(
            replaceable: "m",
            replacement: "м"
        ),
        TransliterationRule(
            replaceable: "n",
            replacement: "н"
        ),
        TransliterationRule(
            replaceable: "o",
            replacement: "о"
        ),
        TransliterationRule(
            replaceable: "p",
            replacement: "п"
        ),
        TransliterationRule(
            replaceable: "r",
            replacement: "р"
        ),
        TransliterationRule(
            replaceable: "s",
            replacement: "с"
        ),
        TransliterationRule(
            replaceable: "t",
            replacement: "т"
        ),
        TransliterationRule(
            replaceable: "u",
            replacement: "а"
        ),
        TransliterationRule(
            replaceable: "v",
            replacement: "в"
        ),
        TransliterationRule(
            replaceable: "w",
            replacement: "в"
        ),
        TransliterationRule(
            replaceable: "x",
            replacement: "кс"
        ),
        TransliterationRule(
            replaceable: "y",
            replacement: "и"
        ),
        TransliterationRule(
            replaceable: "z",
            replacement: "з"
        )
    ]
    
    fileprivate static let russianToEnglishRules = [
        
        // 1 letter
        TransliterationRule(
            replaceable: "а",
            replacement: "a"
        ),
        TransliterationRule(
            replaceable: "б",
            replacement: "b"
        ),
        TransliterationRule(
            replaceable: "в",
            replacement: "v"
        ),
        TransliterationRule(
            replaceable: "г",
            replacement: "g"
        ),
        TransliterationRule(
            replaceable: "д",
            replacement: "d"
        ),
        TransliterationRule(
            replaceable: "е",
            replacement: "e"
        ),
        TransliterationRule(
            replaceable: "ё",
            replacement: "yo"
        ),
        TransliterationRule(
            replaceable: "ж",
            replacement: "zh"
        ),
        TransliterationRule(
            replaceable: "з",
            replacement: "z"
        ),
        TransliterationRule(
            replaceable: "и",
            replacement: "i"
        ),
        TransliterationRule(
            replaceable: "й",
            replacement: "y"
        ),
        TransliterationRule(
            replaceable: "к",
            replacement: "k"
        ),
        TransliterationRule(
            replaceable: "л",
            replacement: "l"
        ),
        TransliterationRule(
            replaceable: "м",
            replacement: "m"
        ),
        TransliterationRule(
            replaceable: "н",
            replacement: "n"
        ),
        TransliterationRule(
            replaceable: "о",
            replacement: "o"
        ),
        TransliterationRule(
            replaceable: "п",
            replacement: "p"
        ),
        TransliterationRule(
            replaceable: "р",
            replacement: "r"
        ),
        TransliterationRule(
            replaceable: "с",
            replacement: "s"
        ),
        TransliterationRule(
            replaceable: "т",
            replacement: "t"
        ),
        TransliterationRule(
            replaceable: "у",
            replacement: "u"
        ),
        TransliterationRule(
            replaceable: "ф",
            replacement: "f"
        ),
        TransliterationRule(
            replaceable: "х",
            replacement: "kh"
        ),
        TransliterationRule(
            replaceable: "ц",
            replacement: "ts"
        ),
        TransliterationRule(
            replaceable: "ч",
            replacement: "ch"
        ),
        TransliterationRule(
            replaceable: "ш",
            replacement: "sh"
        ),
        TransliterationRule(
            replaceable: "щ",
            replacement: "sch"
        ),
        TransliterationRule(
            replaceable: "ъ",
            replacement: ""
        ),
        TransliterationRule(
            replaceable: "ы",
            replacement: "y"
        ),
        TransliterationRule(
            replaceable: "ь",
            replacement: "'"
        ),
        TransliterationRule(
            replaceable: "э",
            replacement: "e"
        ),
        TransliterationRule(
            replaceable: "ю",
            replacement: "yu"
        ),
        TransliterationRule(
            replaceable: "я",
            replacement: "ya"
        )
    ]
    
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
    
    public func rules(forTransliterationFrom sourceLanguage: Language, to targetLanguage: Language) -> [TransliterationRule] {
        switch sourceLanguage {
        case .english:
            switch targetLanguage {
            case .english:
                return []
            case .russian:
                return type(of: self).englishToRussianRules
            }
        case .russian:
            switch targetLanguage {
            case .english:
                return type(of: self).russianToEnglishRules
            case .russian:
                return []
            }
        }
    }
    
    // MARK: Private object methods
    
}
