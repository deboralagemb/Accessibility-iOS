//
//  GoodReadabilityViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 29/09/22.
//

import UIKit

class GoodReadabilityViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var forgotPasswordLabel: UILabel!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var continueLabel: UILabel!
    @IBOutlet var googleButton: UIButton!
    @IBOutlet var twitterButton: UIButton!
    @IBOutlet var facebookButton: UIButton!
    @IBOutlet var signUpLabel: UILabel!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
        setupImageView()
        setupTextFields()
        setupButtons()
        setupLabels()
    }

    // MARK: - Private
    private func configureNavBar() {
        title = LocalizedStrings.Readability.goodTitle
        let infoButton = UIButton(type: .infoLight)
        infoButton.addTarget(self, action: #selector(infoButtonTapped), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: infoButton)
    }
    
    private func setupImageView() {
        let logoImage = UIImage(named: "linkedin")
        logoImageView.image = logoImage
        setupAccessibilityForImageView()
    }
    
    private func setupAccessibilityForImageView() {
        logoImageView.isAccessibilityElement = true
        logoImageView.accessibilityLabel = "Brand logo image"
    }
    
    private func setupTextFields() {
        emailTextField.placeholder = LocalizedStrings.Readability.emailPlaceholder
        passwordTextField.placeholder = LocalizedStrings.Readability.passwordPlaceholder
        setupAccessibilityForTextFields()
    }
    
    private func setupAccessibilityForTextFields() {
        emailTextField.accessibilityHint = AccessibilityHints.Fields.emailField
        passwordTextField.accessibilityHint = AccessibilityHints.Fields.passwordField
    }
    
    private func setupButtons() {
        let googleImage = UIImage(named: "google")
        let twitterImage = UIImage(named: "twitter")
        let facebookImage = UIImage(named: "facebook")
        let socialMediaButtons = [googleButton, twitterButton, facebookButton]

        googleButton.setImage(googleImage, for: .normal)
        twitterButton.setImage(twitterImage, for: .normal)
        facebookButton.setImage(facebookImage, for: .normal)

        socialMediaButtons.forEach {
            $0?.backgroundColor = .white
            $0?.layer.cornerRadius = ($0?.bounds.height ?? 42) / 2
            $0?.layer.shadowColor = UIColor.black.cgColor
            $0?.layer.shadowOffset = CGSize(width: 0, height: 1)
            $0?.layer.shadowRadius = 2
            $0?.layer.shadowOpacity = 0.15
        }

        loginButton.setTitle(LocalizedStrings.Readability.loginButtonTitle, for: .normal)
        loginButton.isEnabled = false
        setupAccessibilityForButtons()
    }
    
    private func setupAccessibilityForButtons() {
        googleButton.accessibilityLabel = AccessibilityStrings.Buttons.googleButton
        twitterButton.accessibilityLabel = AccessibilityStrings.Buttons.twitterButton
        facebookButton.accessibilityLabel = AccessibilityStrings.Buttons.facebookButton
        googleButton.accessibilityHint = AccessibilityHints.Buttons.googleButton
        twitterButton.accessibilityHint = AccessibilityHints.Buttons.twitterButton
        facebookButton.accessibilityHint = AccessibilityHints.Buttons.facebookButton
    }
    
    private func setupLabels() {
        continueLabel.text = LocalizedStrings.Readability.continueWith
        setupForgotPasswordLabel()
        setupSignUpLabel()
        setupAccessibilityForLabels()
    }
    
    func setupForgotPasswordLabel() {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(forgotPasswordLabelTapped))
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
        let underlineAttributedString = NSAttributedString(string: LocalizedStrings.Readability.forgotPassword,
                                                           attributes: underlineAttribute)
        forgotPasswordLabel.attributedText = underlineAttributedString
        forgotPasswordLabel.addGestureRecognizer(gestureRecognizer)
        forgotPasswordLabel.isUserInteractionEnabled = true
        forgotPasswordLabel.text = LocalizedStrings.Readability.forgotPassword
    }
    
    func setupSignUpLabel() {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(signUpLabelTapped))
        let accountString = LocalizedStrings.Readability.accountQuestion + " "
        let signUpString = LocalizedStrings.Readability.signUp
        let underlineAttributedString = NSMutableAttributedString(string: accountString + signUpString)
        underlineAttributedString.addAttribute(.underlineStyle,
                                               value: NSUnderlineStyle.thick.rawValue,
                                               range: (underlineAttributedString.string as NSString).range(of: signUpString))
        signUpLabel.attributedText = underlineAttributedString
        signUpLabel.addGestureRecognizer(gestureRecognizer)
        signUpLabel.isUserInteractionEnabled = true
    }
    
    private func setupAccessibilityForLabels() {

    }
            
    private func presentAlert() {
        let alertTitle = LocalizedStrings.Readability.alertTitle
        let alertMessage = LocalizedStrings.Readability.alertMessage
        let alertButton = LocalizedStrings.Readability.alertButton.uppercased()
        let action = UIAlertAction(title: alertButton, style: .default)
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        alert.addAction(action)
                                   
        present(alert, animated: true, completion: nil)
    }
    
    private func genericButtonTapped() {
        let alertTitle = LocalizedStrings.Readability.genericAlertTitle
        let alertButton = LocalizedStrings.Readability.alertButton.uppercased()
        let action = UIAlertAction(title: alertButton, style: .default)
        let alert = UIAlertController(title: alertTitle, message: nil, preferredStyle: .alert)
        alert.addAction(action)
                                   
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: - Actions
    @objc
    private func infoButtonTapped() {
        presentAlert()
    }

    @objc
    private func forgotPasswordLabelTapped() {
        genericButtonTapped()
    }

    @objc
    private func signUpLabelTapped() {
        genericButtonTapped()
    }
    
    @IBAction private func googleButtonTapped() {
        genericButtonTapped()
    }
    
    @IBAction private func twitterButtonTapped() {
        genericButtonTapped()
    }
    
    @IBAction private func facebookButtonTapped() {
        genericButtonTapped()
    }
    
}
