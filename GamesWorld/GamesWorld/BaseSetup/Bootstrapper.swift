//
//  Bootstrapper.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//


import UIKit
import Foundation

struct Bootstrapper {
    
    var window: UIWindow
    static var instance: Bootstrapper?
    
    private init(window: UIWindow) {
        self.window = window
    }
    
    static func initialize(_ launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) {
        instance = Bootstrapper(window: makeNewWindow())
//        Bootstrapper.setupTheLanguage()
        instance!.bootstrap()
    }
    
    mutating func bootstrap() {
        //Decision point to show Onboarding, Login, Home.
        showSetupView()
        window.makeKeyAndVisible()
    }
    
//    static func setupTheLanguage() {
//    }
}

extension Bootstrapper {
    
    private static func makeNewWindow() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .black
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.window = window
        }
        return window
    }
    
    // MARK: - Load Splash
    private func showSetupView() {
        let controller = ViewController()
        self.window.rootViewController = controller
    }
    
    // MARK: - Load Localization Configuration
    static func loadApplication() {
        Bootstrapper.loadLocalizationConfiguration()
    }
    
    // MARK: - Load Localization Configuration
    static func loadLocalizationConfiguration() {
        self.loadMetaConfiguration()
    }
    
    // MARK: - Load Meta Configuration
    static func loadMetaConfiguration() {
        DispatchQueue.main.async {
            startAppFlow()
        }
    }
    
    // MARK: - Start App Flow
    static func startAppFlow() {
        showLogin()
    }
    
    // MARK: - Start Authentication Flow
    static func showLogin() {
        guard let instance = instance else { fatalError("Instance is not initialized") }
        instance.showLoginVC()
    }
    
    private func showLoginVC() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(identifier: "SignInVC")
        let nav = UINavigationController(rootViewController: controller)
        self.window.rootViewController = nav
        
    }
}
