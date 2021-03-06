//
//  ViewController.swift
//  11thWeek
//
//  Created by Mustafa Berkay Kaya on 14.12.2021.
//

import UIKit

protocol WelcomeViewDelegate: AnyObject {
    func didTapEnableButton()
}

class ViewController: UIViewController, WelcomeViewDelegate {
  
    let welcomeView = WelcomeView()
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeView.delagate = self
        
        if defaults.bool(forKey: "FirstLaunch") == true {
            print("Second+")
            defaults.setValue(true, forKey: "FirstLaunch")
        } else {
            print("First")
            addSubViews()
            defaults.setValue(true, forKey: "FirstLaunch")
        }
    }
}

extension ViewController {
    private func addSubViews() {
        view.addSubview(welcomeView)
        welcomeView.edgesToSuperview(usingSafeArea: true)
    }
    
    func didTapEnableButton() {
        print("Tetiklendi")
    }
}
