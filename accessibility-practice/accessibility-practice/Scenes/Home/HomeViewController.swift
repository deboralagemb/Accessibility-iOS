//
//  ViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 29/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private var colorsButton: UIButton!
    @IBOutlet private var fontsButton: UIButton!
    @IBOutlet private var readabilityButton: UIButton!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = NSLocalizedString("Home.Title", comment: "")
        configureButtons()
    }

    // MARK: - Private
    private func configureButtons() {
        colorsButton.setTitle(NSLocalizedString("Home.Colors.Button", comment: ""), for: .normal)
        fontsButton.setTitle(NSLocalizedString("Home.Fonts.Button", comment: ""), for: .normal)
        readabilityButton.setTitle(NSLocalizedString("Home.Readability.Button", comment: ""), for: .normal)
    }
}

