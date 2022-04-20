//
//  ViewController.swift
//  UIKitApp
//
//  Created by Игорь Богданов on 22.03.2022.
//

import UIKit

protocol ViewControllerDelegate

class ViewController: UIViewController, UITextFieldDelegate {
    
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
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        canvasView.backgroundColor = UIColor (red: CGFloat(redLevelSlider.value), green: CGFloat(greenLevelSlider.value), blue: CGFloat(blueLevelSlider.value), alpha: 1)
//
        redLevelSlider.minimumTrackTintColor = .red
        greenLevelSlider.minimumTrackTintColor = .green
        blueLevelSlider.minimumTrackTintColor = .blue
        
        redLevelLabel.text = String(redLevelSlider.value)
        greenLevelLabel.text = String(greenLevelSlider.value)
        blueLevelLabel.text = String(blueLevelSlider.value)
        
    }
    
    @IBAction func redSliderAction() {
        setCanvasBGColor()
        redLevelLabel.text = String(format:"%.2f",redLevelSlider.value)
        redTextField.text = String(format:"%.2f",redLevelSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        setCanvasBGColor()
        greenLevelLabel.text = String(format:"%.2f",greenLevelSlider.value)
        greenTextField.text = String(format:"%.2f",greenLevelSlider.value)
    }
    
    @IBAction func blueSliderAction() {
        setCanvasBGColor()
        blueLevelLabel.text = String(format:"%.2f",blueLevelSlider.value)
        blueTextField.text = String(format:"%.2f",blueLevelSlider.value)
    }
    private func setCanvasBGColor() {
        canvasView.backgroundColor = UIColor (red: CGFloat(redLevelSlider.value), green: CGFloat(greenLevelSlider.value), blue: CGFloat(blueLevelSlider.value), alpha: 1)
    }

    internal func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == redTextField {
            redLevelLabel.text = redTextField.text
            redLevelSlider.value = Float(redTextField.text ?? 0.0)
        } else if textField == greenTextField {
            greenLevelLabel.text = greenTextField.text
            greenLevelSlider.value = Float(greenTextField.text ?? 0.0)
        } else {
            blueLevelLabel.text = blueTextField.text
            blueLevelSlider.value = Float(blueTextField.text ?? 0.0)
        }
    }
}

