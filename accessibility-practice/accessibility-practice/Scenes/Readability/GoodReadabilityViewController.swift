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
        title = "Good"
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

        loginButton.setTitle("Login", for: .normal)
        loginButton.isEnabled = false
    }
    
    private func setupLabels() {
        continueLabel.text = "Or continue with"
        signUpLabel.text = "Don't have an account? SIGN UP"
        forgotPasswordLabel.text = "Forgot password"
    }
    
    //        <a href="https://www.flaticon.com/br/icones-gratis/google" title="google ícones">Google ícones criados por Freepik - Flaticon</a>
            
    //        <a href="https://www.flaticon.com/br/icones-gratis/twitter" title="twitter ícones">Twitter ícones criados por Pixel perfect - Flaticon</a>
            
    //        <a href="https://www.flaticon.com/br/icones-gratis/facebook" title="facebook ícones">Facebook ícones criados por NajmunNahar - Flaticon</a>
            
    //        <a href="https://www.flaticon.com/br/stickers-gratis/linkedin" title="linkedin figurinhas">Linkedin figurinhas criadas por Stickers - Flaticon</a>
            
    // MARK: - Actions
}
