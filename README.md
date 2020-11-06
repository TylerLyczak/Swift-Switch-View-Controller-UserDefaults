# Swift Switch View Controller Based on UserDefaults
---

### Description

The main functionality comes from **SceneDelegate.swift**

In this file, you can see the various functions that allow for switching navigation controllers

---

#### switchViewControllerToSetup()

In this function, we get the storyboard reference and the navigation controller from it

We then make a new navigation controller from instantiating a new view controller, "SetupViewController"

Then we set the navigation reference to that and popToRootViewController to get to the first view

---

#### switchViewControllerToRoot()

Same as **switchViewControllerToSetup()**, but it sets the navigation controller back to the root.