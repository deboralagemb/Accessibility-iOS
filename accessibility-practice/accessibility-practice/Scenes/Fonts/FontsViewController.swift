//
//  FontsViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 29/09/22.
//

import UIKit

class FontsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private var systemFontLabel: UILabel!
    @IBOutlet private var customBadExampleLabel: UILabel!
    @IBOutlet private var customGoodExampleLabel: UILabel!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = LocalizedStrings.Fonts.title
        configureLabels()
    }
    
    // MARK: - Private
    private func configureLabels() {
        configureSystemFontLabel()
        configureCustomBadExampleLabel()
        configureCustomGoodExampleLabel()
    }
    
    private func configureSystemFontLabel() {
        systemFontLabel.text = LocalizedStrings.Fonts.systemExample
        systemFontLabel.font = UIFont.preferredFont(forTextStyle: .body)
        systemFontLabel.adjustsFontForContentSizeCategory = true
    }
    
    private func configureCustomBadExampleLabel() {
        guard let customFont = UIFont(name: "TimesNewRomanPSMT", size: UIFont.labelFontSize) else {
            fatalError("Failed to load the `TimesNewRomanPSMT' font.")
        }
        customBadExampleLabel.font = customFont
        customBadExampleLabel.text = LocalizedStrings.Fonts.badExample
    }
    
    private func configureCustomGoodExampleLabel() {
        guard let customFont = UIFont(name: "TimesNewRomanPSMT", size: UIFont.labelFontSize) else {
            fatalError("Failed to load the `TimesNewRomanPSMT' font.")
        }
        customGoodExampleLabel.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont)
        customGoodExampleLabel.adjustsFontForContentSizeCategory = true
        customGoodExampleLabel.text = LocalizedStrings.Fonts.goodExample
    }
}
