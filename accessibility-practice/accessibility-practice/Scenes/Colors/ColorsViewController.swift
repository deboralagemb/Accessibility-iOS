//
//  ColorsViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 30/09/22.
//

import UIKit

class ColorsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private var colorContrastButton: UIButton!
    @IBOutlet private var lightDarkModeButton: UIButton!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = LocalizedStrings.Colors.title
        configureButtons()
    }
    
    // MARK: - Private
    private func configureButtons() {
        colorContrastButton.setTitle(LocalizedStrings.Colors.contrastTitle, for: .normal)
        lightDarkModeButton.setTitle(LocalizedStrings.Colors.appearanceTitle, for: .normal)
    }
}
