//
//  FinishSetup.swift
//  Switch View Controller Based On UserDefaults
//
//  Created by Tyler Lyczak on 11/5/20.
//

import UIKit

class FinishSetup: UIViewController {
    
    
    @IBAction func onFinishSetup(_ sender: Any) {
        
        // Set the UserDefaults key for SetupFinished to true
        let defaults = UserDefaults.standard
        defaults.set(true, forKey: "SetupFinished")
        
        // Run the function from the SceneDelegate to switch root view controllers
        let sceneDelegate = UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
        sceneDelegate.switchViewControllerToRoot()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
