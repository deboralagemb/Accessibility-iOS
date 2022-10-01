//
//  LocalizedStrings.swift
//  accessibility-practice
//
//  Created by Débora Lage on 30/09/22.
//

import Foundation

public enum LocalizedStrings {
    
    // MARK: -
    public enum Home {
        public static let title = NSLocalizedString("Home.Title", comment: "")
        public static let colorsButtonTitle = NSLocalizedString("Home.Colors.Button", comment: "")
        public static let fontsButtonTitle = NSLocalizedString("Home.Fonts.Button", comment: "")
        public static let readabilityButtonTitle = NSLocalizedString("Home.Readability.Button", comment: "")
    }
    
    // MARK: -
    public enum Colors {
        public static let title = NSLocalizedString("Colors.Title", comment: "")
        public static let badExample = NSLocalizedString("Colors.Bad.Example", comment: "")
        public static let goodExample = NSLocalizedString("Colors.Good.Example", comment: "")
        public static let contrastTitle = NSLocalizedString("Colors.Contrast.Title", comment: "")
        public static let appearanceTitle = NSLocalizedString("Colors.Appearance.Title", comment: "")
        public static let systemColor = NSLocalizedString("Colors.Appearance.System", comment: "")
        public static let badExampleColor = NSLocalizedString("Colors.Appearance.Bad.Example", comment: "")
        public static let goodExampleColor = NSLocalizedString("Colors.Appearance.Good.Example", comment: "")
        public static let learnMoreButtonTitle = NSLocalizedString("Colors.Appearance.Learn.More", comment: "")
    }
    
    // MARK: -
    public enum Fonts {
        public static let title = NSLocalizedString("Fonts.Title", comment: "")
        public static let systemExample = NSLocalizedString("Fonts.System.Example", comment: "")
        public static let badExample = NSLocalizedString("Fonts.Bad.Example", comment: "")
        public static let goodExample = NSLocalizedString("Fonts.Good.Example", comment: "")
    }
    
    // MARK: -
    public enum Readability {
        public static let title = NSLocalizedString("Readability.Title", comment: "")
        public static let loginButtonTitle = NSLocalizedString("Readability.Login.Button", comment: "")
        public static let continueWith = NSLocalizedString("Readability.Social.Media", comment: "")
        public static let accountQuestion = NSLocalizedString("Readability.Account.Question", comment: "")
        public static let signUp = NSLocalizedString("Readability.Sign.Up", comment: "")
        public static let forgotPassword = NSLocalizedString("Readability.Forgot.Password", comment: "")
        public static let emailPlaceholder = NSLocalizedString("Readability.Email.Address", comment: "")
        public static let passwordPlaceholder = NSLocalizedString("Readability.Password", comment: "")
    }
}
