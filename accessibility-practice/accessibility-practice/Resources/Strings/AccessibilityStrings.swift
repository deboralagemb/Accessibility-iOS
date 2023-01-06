//
//  AccessibilityStrings.swift
//  accessibility-practice
//
//  Created by Débora Lage on 30/09/22.
//

import Foundation

public enum AccessibilityStrings {
    
    // MARK: -
    public enum Buttons {
        public static let googleButton = NSLocalizedString("Accessibility.Google.Button", comment: "")
        public static let twitterButton = NSLocalizedString("Accessibility.Twitter.Button", comment: "")
        public static let facebookButton = NSLocalizedString("Accessibility.Facebook.Button", comment: "")
    }
    
    // MARK: -
    public enum Headings { }
    
    // MARK: -
    public enum Images {
        public static let brandLogoImage = NSLocalizedString("Accessibility.Brand.Image", comment: "")
    }
    
    // MARK: -
    public enum Views { }
    
    // MARK: -
    public enum Fields { }
    
    // MARK: -
    public enum Labels { }
}

public enum AccessibilityHints {
    
    // MARK: -
    public enum Buttons {
        public static let googleButton = NSLocalizedString("Accessibility.Google.Button.Hint", comment: "")
        public static let twitterButton = NSLocalizedString("Accessibility.Twitter.Button.Hint", comment: "")
        public static let facebookButton = NSLocalizedString("Accessibility.Facebook.Button.Hint", comment: "")
    }
    
    // MARK: -
    public enum Headings { }
    
    // MARK: -
    public enum Images { }
    
    // MARK: -
    public enum Views { }
    
    // MARK: -
    public enum Fields {
        public static let emailField = NSLocalizedString("Readability.Email.Address.Hint", comment: "")
        public static let passwordField = NSLocalizedString("Readability.Password.Hint", comment: "")
    }
    
    // MARK: -
    public enum Labels { }
}
