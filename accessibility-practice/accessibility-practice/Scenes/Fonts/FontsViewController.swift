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
        configureNavBar()
        configureLabels()
    }
    
    // MARK: - Private
    private func configureNavBar() {
        title = LocalizedStrings.Fonts.title
        let infoButton = UIButton(type: .infoLight)
        infoButton.addTarget(self, action: #selector(infoButtonTapped), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: infoButton)
    }
    
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
    
    private func presentAlert() {
        let alertTitle = LocalizedStrings.Fonts.alertTitle
        let alertMessage = LocalizedStrings.Fonts.alertMessage
        let alertButton = LocalizedStrings.Fonts.alertButton.uppercased()
        let action = UIAlertAction(title: alertButton, style: .default)
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        alert.addAction(action)
                                   
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Actions
    @objc func infoButtonTapped() {
        presentAlert()
    }
}
