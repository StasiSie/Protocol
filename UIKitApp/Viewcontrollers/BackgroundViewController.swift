//
//  BackgroundViewController.swift
//  UIKitApp
//
//  Created by Игорь Богданов on 20.04.2022.
//

import UIKit

protocol ViewControllerDelegate {
    func setColor(_ color: UIColor) 
}

class BackgroundViewController: UIViewController, ViewControllerDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as! ViewController
        settingsVC.delegate = self
        settingsVC.canvasColor = view.backgroundColor
    }
    
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
}
