//
//  MainViewController.swift
//  WordyDemo
//
//  Created by Igor Matyushkin on 12.09.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var titleLabel: UILabel!
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initializeTitleLabel()
        
        let title = "WORDY demo"
        self.updateTitleLabel(withTitle: title)
    }
    
    // MARK: Private object methods
    
    fileprivate func initializeTitleLabel() {
        self.titleLabel.numberOfLines = 0
        self.titleLabel.text = ""
    }
    
    fileprivate func updateTitleLabel(withTitle title: String) {
        self.titleLabel.text = title
    }
    
    // MARK: Actions
    
}
