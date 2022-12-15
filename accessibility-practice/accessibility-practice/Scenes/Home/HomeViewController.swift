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
    @IBOutlet private var imagesRefButton: UIButton!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = LocalizedStrings.Home.title
        configureButtons()
    }

    // MARK: - Private
    private func configureButtons() {
        colorsButton.setTitle(LocalizedStrings.Home.colorsButtonTitle, for: .normal)
        fontsButton.setTitle(LocalizedStrings.Home.fontsButtonTitle, for: .normal)
        readabilityButton.setTitle(LocalizedStrings.Home.readabilityButtonTitle, for: .normal)
        imagesRefButton.setTitle(LocalizedStrings.Home.imagesRefButtonTitle, for: .normal)
    }
}

