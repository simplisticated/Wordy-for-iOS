//
//  RotationStore.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

internal class RotationStore {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init() {
        self.rules = []
        self.rules.append(contentsOf: self.generateRulesForEnglish())
        self.rules.append(contentsOf: self.generateRulesForRussian())
        self.rules.append(contentsOf: self.generateRulesForSigns())
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    private var rules: [TextRotationRule]
    
    public var ruleCount: Int {
        get {
            return self.rules.count
        }
    }
    
    // MARK: Public object methods
    
    public func rule(forIndex index: Int) -> TextRotationRule {
        return self.rules[index]
    }
    
    // MARK: Private object methods
    
    fileprivate func generateRulesForEnglish() -> [TextRotationRule] {
        return [
            TextRotationRule(
                normal: "a",
                rotated: "ɐ"
            ),
            TextRotationRule(
                normal: "b",
                rotated: "q"
            ),
            TextRotationRule(
                normal: "c",
                rotated: "ɔ"
            ),
            TextRotationRule(
                normal: "d",
                rotated: "р"
            ),
            TextRotationRule(
                normal: "e",
                rotated: "ǝ"
            ),
            TextRotationRule(
                normal: "f",
                rotated: "ɟ"
            ),
            TextRotationRule(
                normal: "g",
                rotated: "ƃ"
            ),
            TextRotationRule(
                normal: "h",
                rotated: "ɥ"
            ),
            TextRotationRule(
                normal: "i",
                rotated: "ı"
            ),
            TextRotationRule(
                normal: "j",
                rotated: "ɾ"
            ),
            TextRotationRule(
                normal: "k",
                rotated: "ʞ"
            ),
            TextRotationRule(
                normal: "l",
                rotated: "l"
            ),
            TextRotationRule(
                normal: "m",
                rotated: "ш"
            ),
            TextRotationRule(
                normal: "n",
                rotated: "u"
            ),
            TextRotationRule(
                normal: "o",
                rotated: "о"
            ),
            TextRotationRule(
                normal: "p",
                rotated: "d"
            ),
            TextRotationRule(
                normal: "q",
                rotated: "ь"
            ),
            TextRotationRule(
                normal: "r",
                rotated: "ɹ"
            ),
            TextRotationRule(
                normal: "s",
                rotated: "s"
            ),
            TextRotationRule(
                normal: "t",
                rotated: "ʇ"
            ),
            TextRotationRule(
                normal: "u",
                rotated: "п"
            ),
            TextRotationRule(
                normal: "v",
                rotated: "л"
            ),
            TextRotationRule(
                normal: "w",
                rotated: "м"
            ),
            TextRotationRule(
                normal: "x",
                rotated: "x"
            ),
            TextRotationRule(
                normal: "y",
                rotated: "ʎ"
            ),
            TextRotationRule(
                normal: "z",
                rotated: "z"
            )
        ]
    }
    
    fileprivate func generateRulesForRussian() -> [TextRotationRule] {
        return [
            TextRotationRule(
                normal: "а",
                rotated: "ɐ"
            ),
            TextRotationRule(
                normal: "б",
                rotated: "ƍ"
            ),
            TextRotationRule(
                normal: "в",
                rotated: "ʚ"
            ),
            TextRotationRule(
                normal: "г",
                rotated: "ɹ"
            ),
            TextRotationRule(
                normal: "д",
                rotated: "ɓ"
            ),
            TextRotationRule(
                normal: "е",
                rotated: "ǝ"
            ),
            TextRotationRule(
                normal: "ё",
                rotated: "ǝ̤"
            ),
            TextRotationRule(
                normal: "ж",
                rotated: "ж"
            ),
            TextRotationRule(
                normal: "з",
                rotated: "ε"
            ),
            TextRotationRule(
                normal: "и",
                rotated: "и"
            ),
            TextRotationRule(
                normal: "й",
                rotated: "n̯"
            ),
            TextRotationRule(
                normal: "к",
                rotated: "ʞ"
            ),
            TextRotationRule(
                normal: "л",
                rotated: "v"
            ),
            TextRotationRule(
                normal: "м",
                rotated: "w"
            ),
            TextRotationRule(
                normal: "н",
                rotated: "н"
            ),
            TextRotationRule(
                normal: "о",
                rotated: "o"
            ),
            TextRotationRule(
                normal: "п",
                rotated: "u"
            ),
            TextRotationRule(
                normal: "р",
                rotated: "d"
            ),
            TextRotationRule(
                normal: "с",
                rotated: "ɔ"
            ),
            TextRotationRule(
                normal: "т",
                rotated: "ɯ"
            ),
            TextRotationRule(
                normal: "у",
                rotated: "ʎ"
            ),
            TextRotationRule(
                normal: "ф",
                rotated: "ȸ"
            ),
            TextRotationRule(
                normal: "х",
                rotated: "х"
            ),
            TextRotationRule(
                normal: "ц",
                rotated: "ǹ"
            ),
            TextRotationRule(
                normal: "ч",
                rotated: "Һ"
            ),
            TextRotationRule(
                normal: "ш",
                rotated: "m"
            ),
            TextRotationRule(
                normal: "щ",
                rotated: "m"
            ),
            TextRotationRule(
                normal: "ъ",
                rotated: "q"
            ),
            TextRotationRule(
                normal: "ы",
                rotated: "ıq"
            ),
            TextRotationRule(
                normal: "ь",
                rotated: "q"
            ),
            TextRotationRule(
                normal: "э",
                rotated: "є"
            ),
            TextRotationRule(
                normal: "ю",
                rotated: "oı"
            ),
            TextRotationRule(
                normal: "я",
                rotated: "ʁ"
            )
        ]
    }
    
    fileprivate func generateRulesForSigns() -> [TextRotationRule] {
        return [
            TextRotationRule(
                normal: ".",
                rotated: "˙"
            ),
            TextRotationRule(
                normal: ",",
                rotated: "‘"
            ),
            TextRotationRule(
                normal: "'",
                rotated: ","
            ),
            TextRotationRule(
                normal: "!",
                rotated: "¡"
            ),
            TextRotationRule(
                normal: "?",
                rotated: "¿"
            ),
            TextRotationRule(
                normal: "/",
                rotated: "/"
            ),
            TextRotationRule(
                normal: "\\",
                rotated: "\\"
            ),
            TextRotationRule(
                normal: "<",
                rotated: ">"
            ),
            TextRotationRule(
                normal: ">",
                rotated: "<"
            ),
            TextRotationRule(
                normal: "(",
                rotated: ")"
            ),
            TextRotationRule(
                normal: ")",
                rotated: "("
            ),
            TextRotationRule(
                normal: "[",
                rotated: "]"
            ),
            TextRotationRule(
                normal: "]",
                rotated: "["
            )
        ]
    }
    
}
