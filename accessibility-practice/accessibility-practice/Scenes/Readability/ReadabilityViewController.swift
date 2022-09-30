//
//  ReadabilityViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 29/09/22.
//

import UIKit

class ReadabilityViewController: UIViewController {
    @IBOutlet var badExampleButton: UIButton!
    @IBOutlet var goodExampleButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = NSLocalizedString("Home.Readability.Button", comment: "")
        configureButtons()
    }
    
    private func configureButtons() {
        let badExampleTitle = "Bad"
        let goodExampleTitle = "Good"
        badExampleButton.setTitle(badExampleTitle, for: .normal)
        goodExampleButton.setTitle(goodExampleTitle, for: .normal)
    }
}
