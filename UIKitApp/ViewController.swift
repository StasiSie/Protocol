//
//  ViewController.swift
//  UIKitApp
//
//  Created by Игорь Богданов on 22.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var canvasView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
   
    @IBOutlet var redLevelLabel: UILabel!
    @IBOutlet var greenLevelLabel: UILabel!
    @IBOutlet var blueLevelLabel: UILabel!
    
    @IBOutlet var redLevelSlider: UISlider!
    @IBOutlet var greenLevelSlider: UISlider!
    @IBOutlet var blueLevelSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvasView.backgroundColor = UIColor (red: CGFloat(redLevelSlider.value), green: CGFloat(greenLevelSlider.value), blue: CGFloat(blueLevelSlider.value), alpha: 1)
        
        redLevelSlider.minimumTrackTintColor = .red
        greenLevelSlider.minimumTrackTintColor = .green
        blueLevelSlider.minimumTrackTintColor = .blue
        
        redLevelLabel.text = String(redLevelSlider.value)
        greenLevelLabel.text = String(greenLevelSlider.value)
        blueLevelLabel.text = String(blueLevelSlider.value)
        
    }
    
    @IBAction func redSliderAction() {
        canvasView.backgroundColor = UIColor (red: CGFloat(redLevelSlider.value), green: CGFloat(greenLevelSlider.value), blue: CGFloat(blueLevelSlider.value), alpha: 1)
        redLevelLabel.text = String(redLevelSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        canvasView.backgroundColor = UIColor (red: CGFloat(redLevelSlider.value), green: CGFloat(greenLevelSlider.value), blue: CGFloat(blueLevelSlider.value), alpha: 1)
        greenLevelLabel.text = String(greenLevelSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        canvasView.backgroundColor = UIColor (red: CGFloat(redLevelSlider.value), green: CGFloat(greenLevelSlider.value), blue: CGFloat(blueLevelSlider.value), alpha: 1)
        blueLevelLabel.text = String(blueLevelSlider.value)
        
    }
    


}

