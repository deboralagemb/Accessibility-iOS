//
//  ColorsViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 29/09/22.
//

import UIKit

class ColorContrastViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private var badExampleView: UIView!
    @IBOutlet private var badExampleLabel: UILabel!
    @IBOutlet private var goodExampleView: UIView!
    @IBOutlet private var goodExampleLabel: UILabel!
    @IBOutlet private var learnMoreButton: UIButton!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
        configureViews()
        configureButton()
    }
    
    // MARK: - Private
    private func configureNavBar() {
        title = LocalizedStrings.Colors.contrastTitle
        let infoButton = UIButton(type: .infoLight)
        infoButton.addTarget(self, action: #selector(infoButtonTapped), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: infoButton)
    }
    
    private func configureViews() {
        configureBadExampleView()
        configureGoodExampleView()
    }

    private func configureBadExampleView() {
        badExampleView.backgroundColor = .black
        badExampleLabel.textColor = .darkGray
        badExampleLabel.font = .systemFont(ofSize: 18, weight: .light)
        badExampleLabel.text = LocalizedStrings.Colors.badExample
    }

    private func configureGoodExampleView() {
        goodExampleView.backgroundColor = .lightGray
        goodExampleLabel.textColor = .black
        goodExampleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        goodExampleLabel.text = LocalizedStrings.Colors.goodExample
    }
    
    private func configureButton() {
        learnMoreButton.setTitle(LocalizedStrings.Colors.learnMoreButtonTitle, for: .normal)
    }
    
    private func presentAlert() {
        let alertTitle = LocalizedStrings.Colors.alertTitleContrast
        let alertMessage = LocalizedStrings.Colors.alertMessageContrast
        let alertButton = LocalizedStrings.Colors.alertButton.uppercased()
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
