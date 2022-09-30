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
        title = NSLocalizedString("Home.Fonts.Button", comment: "")
        configureLabels()
    }
    
    // MARK: - Private
    private func configureLabels() {
        configureSystemFontLabel()
        configureCustomBadExampleLabel()
        configureCustomGoodExampleLabel()
    }
    
    private func configureSystemFontLabel() {
        systemFontLabel.text = "Fontes do sistema são dinâmicas"
        systemFontLabel.font = UIFont.preferredFont(forTextStyle: .body)
        systemFontLabel.adjustsFontForContentSizeCategory = true
    }
    
    private func configureCustomBadExampleLabel() {
        guard let customFont = UIFont(name: "TimesNewRomanPSMT", size: UIFont.labelFontSize) else {
            fatalError("""
                Failed to load the "TimesNewRomanPSMT" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        customBadExampleLabel.font = customFont
        customBadExampleLabel.text = "Este é um exemplo ruim de fonte dinâmica"
    }
    
    private func configureCustomGoodExampleLabel() {
        guard let customFont = UIFont(name: "TimesNewRomanPSMT", size: UIFont.labelFontSize) else {
            fatalError("""
                Failed to load the "TimesNewRomanPSMT" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        customGoodExampleLabel.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont)
        customGoodExampleLabel.adjustsFontForContentSizeCategory = true
        customGoodExampleLabel.text = "Este é um exemplo bom de fonte dinâmica"
    }
}
