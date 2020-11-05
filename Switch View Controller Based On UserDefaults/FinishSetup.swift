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
        
        self.navigationController?.popViewController(animated: true)
        
        // Switch to ViewController
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController

        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
