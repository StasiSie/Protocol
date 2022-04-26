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
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
   
//    var delegate: ViewControllerDelegate?
    var canvasColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        canvasView.backgroundColor = canvasColor
        
        redLevelSlider.minimumTrackTintColor = .red
        greenLevelSlider.minimumTrackTintColor = .green
        blueLevelSlider.minimumTrackTintColor = .blue
        
        redLevelLabel.text = String(redLevelSlider.value)
        greenLevelLabel.text = String(greenLevelSlider.value)
        blueLevelLabel.text = String(blueLevelSlider.value)
        
        
        setValue(redLevelLabel,greenLevelLabel,blueLevelLabel)
        setValue(redTextField,greenTextField,blueTextField)
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
    @IBAction func saveButtonPressed() {
        delegate?.setColor(canvasView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
    
    private func setCanvasBGColor() {
        canvasView.backgroundColor = UIColor (red: CGFloat(redLevelSlider.value),
                                              green: CGFloat(greenLevelSlider.value),
                                              blue: CGFloat(blueLevelSlider.value),
                                              alpha: 1)
    }

    private func setValue(_ labels: UILabel...) {
        labels.forEach {label in
            switch label {
            case redLevelLabel: label.text = makeString(redLevelSlider)
            case greenLevelLabel: label.text = makeString(greenLevelSlider)
            default: label.text = makeString(blueLevelSlider)
            }
        }
    }
    private func setValue(_ textFields: UITextField...) {
        textFields.forEach { textField in
            switch textField {
            case redTextField: textField.text = makeString(redLevelSlider)
            case greenTextField: textField.text = makeString(greenLevelSlider)
            default: textField.text = makeString(blueLevelSlider)
            }
        }
    }
    private func makeString(_ slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

