//
//  ResetSetup.swift
//  Switch View Controller Based On UserDefaults
//
//  Created by Tyler Lyczak on 11/5/20.
//

import UIKit

class ResetSetup : UIViewController {
    
    
    @IBAction func onClickResetSetup(_ sender: Any) {
        
        // Set the UserDefaults key for SetupFinished to false
        let defaults = UserDefaults.standard
        defaults.set(false, forKey: "SetupFinished")
        
        // Run the function from the SceneDelegate to switch root view controllers
        let sceneDelegate = UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
        sceneDelegate.switchViewControllerToSetup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
