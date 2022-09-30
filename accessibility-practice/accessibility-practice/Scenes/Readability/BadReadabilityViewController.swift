//
//  BadReadabilityViewController.swift
//  accessibility-practice
//
//  Created by Débora Lage on 29/09/22.
//

import UIKit

class BadReadabilityViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var forgotPasswordLabel: UILabel!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var continueLabel: UILabel!
    @IBOutlet var signUpLabel: UILabel!
    @IBOutlet var googleButton: UIButton!
    @IBOutlet var twitterButton: UIButton!
    @IBOutlet var facebookButton: UIButton!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bad"
        setupImageView()
        setupTextFields()
        setupButtons()
        setupLabels()
    }

    // MARK: - Private
    private func setupImageView() {
        let logoImage = UIImage(named: "linkedin")
        logoImageView.image = logoImage
    }
    
    private func setupTextFields() {
        emailTextField.placeholder = "Email address"
        passwordTextField.placeholder = "Password"
    }
    
    private func setupButtons() {
        let googleImage = UIImage(named: "google")
        let twitterImage = UIImage(named: "twitter")
        let facebookImage = UIImage(named: "facebook")

        googleButton.setImage(googleImage, for: .normal)
        twitterButton.setImage(twitterImage, for: .normal)
        facebookButton.setImage(facebookImage, for: .normal)

        [googleButton, twitterButton, facebookButton].forEach {
            $0?.backgroundColor = .white
            $0?.layer.cornerRadius = ($0?.bounds.height ?? 42) / 2
            $0?.layer.shadowColor = UIColor.black.cgColor
            $0?.layer.shadowOffset = CGSize(width: 0, height: 1)
            $0?.layer.shadowRadius = 2
            $0?.layer.shadowOpacity = 0.15
        }

        loginButton.setTitle("Login", for: .normal)
        loginButton.isEnabled = false
    }
    
    private func setupLabels() {
        continueLabel.text = "Or continue with"
        continueLabel.font = UI
        signUpLabel.text = "Don't have an account? SIGN UP"
        forgotPasswordLabel.text = "Forgot password"
    }
}
