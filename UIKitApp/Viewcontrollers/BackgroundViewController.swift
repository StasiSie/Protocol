//
//  BackgroundViewController.swift
//  UIKitApp
//
//  Created by Игорь Богданов on 20.04.2022.
//

import UIKit



class BackgroundViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? ViewController else {return}
        settingsVC.canvasColor = self.view.backgroundColor
                
                
    }
    
    
    
    
}
