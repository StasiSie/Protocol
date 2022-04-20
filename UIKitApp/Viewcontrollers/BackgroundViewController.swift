//
//  BackgroundViewController.swift
//  UIKitApp
//
//  Created by Игорь Богданов on 20.04.2022.
//

import UIKit

class BackgroundViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? ViewController else {return}
        settingsVC.canvasView.backgroundColor = self.view.backgroundColor
        
    }
}
