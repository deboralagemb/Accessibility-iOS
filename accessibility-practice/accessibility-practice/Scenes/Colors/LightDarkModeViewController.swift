//
//  LightDarkModeViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 30/09/22.
//

import UIKit

class LightDarkModeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private var systemView: UIView!
    @IBOutlet private var badExampleView: UIView!
    @IBOutlet private var goodExampleView: UIView!
    @IBOutlet private var systemLabel: UILabel!
    @IBOutlet private var badExampleLabel: UILabel!
    @IBOutlet private var goodExampleLabel: UILabel!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = LocalizedStrings.Colors.appearanceTitle
        configureViews()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        if traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            configureGoodExampleView()
        }
    }

    // MARK: - Private
    private func configureViews() {
        configureSystemView()
        configureBadExampleView()
        configureGoodExampleView()
    }
    
    private func configureSystemView() {
        systemView.backgroundColor = .systemBackground
        systemLabel.textColor = .systemRed
        systemLabel.text = LocalizedStrings.Colors.systemColor
    }
    
    private func configureBadExampleView() {
        badExampleView.backgroundColor = .white
        badExampleLabel.textColor = .black
        badExampleLabel.text = LocalizedStrings.Colors.badExampleColor
    }
    
    private func configureGoodExampleView() {
        let backgroundColorLight: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        let backgroundColorDark: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let textColorLight: UIColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        let textColorDark: UIColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        goodExampleView.backgroundColor = isDarkMode() ? backgroundColorDark : backgroundColorLight
        goodExampleLabel.textColor = isDarkMode() ? textColorDark : textColorLight
        goodExampleLabel.text = LocalizedStrings.Colors.goodExampleColor
    }
    
    private func isDarkMode() -> Bool {
        UITraitCollection.current.userInterfaceStyle == .dark
    }
}
