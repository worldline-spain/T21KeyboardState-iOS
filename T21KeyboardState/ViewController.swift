//
//  ViewController.swift
//  T21KeyboardState
//
//  Created by Eloi Guzmán Cerón on 10/11/16.
//  Copyright © 2016 Worldline. All rights reserved.
//

import UIKit

class ViewController: UIViewController, T21KeyboardNotifications {

    override func viewDidLoad() {
        super.viewDidLoad()
        T21KeyboardState.sharedInstance.addObserver(obs: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow() {
        NSLog("keyboardWillShow")
    }
    
    func keyboardWillHide() {
        NSLog("keyboardWillHide")
    }
    
    func keyboardWillChange() {
        NSLog("keyboardWillChange")
    }
    
    func keyboardDidChange() {
        let shown = T21KeyboardState.sharedInstance.isKeyboardShown
        let size = T21KeyboardState.sharedInstance.keyboardSize
        NSLog("keyboardDidChange")
    }
    
    func keyboardDidShow() {
        let shown = T21KeyboardState.sharedInstance.isKeyboardShown
        let size = T21KeyboardState.sharedInstance.keyboardSize
        NSLog("keyboardDidShow")
    }
    
    func keyboardDidHide() {
        let shown = T21KeyboardState.sharedInstance.isKeyboardShown
        let size = T21KeyboardState.sharedInstance.keyboardSize
        NSLog("keyboardDidHide")
    }


}

