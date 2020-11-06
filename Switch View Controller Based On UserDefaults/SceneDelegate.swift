//
//  SceneDelegate.swift
//  Switch View Controller Based On UserDefaults
//
//  Created by Tyler Lyczak on 11/3/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func switchViewControllerToRoot()    {
        
        // Get the StoryBoard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Get the current navigation controller
        let navigationController:UINavigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        
        // Make a variable to the ViewController, the original root controller
        let initialViewController = storyboard.instantiateViewController(identifier: "ViewController")
        
        // Set the navigation controller to the new navigation controller
        navigationController.viewControllers = [initialViewController]
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        
        // Pop all the views on the navigation controller so the user goes to the new root we made for them
        navigationController.popToRootViewController(animated: false)
    }
    
    func switchViewControllerToSetup()    {
        
        // Get the StoryBoard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Get the current navigation controller
        let navigationController:UINavigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        
        // Make a variable to the SetupViewController
        let initialViewController = storyboard.instantiateViewController(identifier: "SetupViewController")
        
        // Set the navigation controller to the new navigation controller
        navigationController.viewControllers = [initialViewController]
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        
        // Pop all the views on the navigation controller so the user goes to the new root we made for them
        navigationController.popToRootViewController(animated: false)
    }
    
    
    /*
     In This function, we check the user defaults for the "SetupFinished" key
     This key stores a boolean to check if we finished the setup view
     */
    func hasSetupFinished() -> Bool {
        
        let defaults = UserDefaults.standard
        
        // Returns true or false, correlating with the UserDefaults value
        if defaults.bool(forKey: "SetupFinished")  {
            print("Setup has finished")
            return true
        }
        else    {
            print("Setup has not finished")
            return false
        }
    }


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        
        // Runs the hasSetupFinished function to check the UserDefaults, only runs when the user needs to finish the setup
        // So 3 Instances
        //  -   User opened app for the first time
        //  -   User opened app, but never finished the setup
        //  -   User reseted the setup from the root navigation controller
        if !hasSetupFinished() {
            // Get the WindowScene
            if let windowScene = scene as? UIWindowScene {
                
                // Get the window if its not defined yet
                let window = UIWindow(windowScene: windowScene)
                
                // Get the StoryBoard
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                
                // Get the current navigation controller
                let navigationController:UINavigationController = storyboard.instantiateInitialViewController() as! UINavigationController
                
                // Make a variable to the SetupViewController
                let initialViewController = storyboard.instantiateViewController(identifier: "SetupViewController")
                
                // Set the navigation controller to the new navigation controller
                navigationController.viewControllers = [initialViewController]
                window.rootViewController = navigationController
                self.window = window
                
                // Make window visable
                window.makeKeyAndVisible()
            }
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

