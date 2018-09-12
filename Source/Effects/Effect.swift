//
//  Effect.swift
//  Wordy
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import Foundation

public protocol Effect {
    func filteredText(from sourceText: String) -> String
}
