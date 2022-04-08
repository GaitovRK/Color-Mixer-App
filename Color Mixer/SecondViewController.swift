//
//  SecondViewController.swift
//  Color Mixer
//
//  Created by Rashid Gaitov on 06.04.2022.
//

import UIKit

struct ColorValues {
    static var red   = 0.50
    static var green = 0.50
    static var blue  = 0.50
}

class SecondViewController: UIViewController {

    @IBOutlet var rectangleColorView: UIView!
    @IBOutlet var colorsValueLabelStack: [UILabel]!
    @IBOutlet var sliderStack: [UISlider]!
    @IBOutlet var textFieldStack: [UITextField]!
    
    var redColorValue   = ColorValues.red
    var greenColorValue = ColorValues.green
    var blueColorValue  = ColorValues.blue

    
    override func viewDidLoad() {
        super.viewDidLoad()

        rectangleColorChanged()
        rectangleColorView.layer.cornerRadius = 5
        
    }


    func rectangleColorChanged() {
        rectangleColorView.backgroundColor = UIColor(red: redColorValue, green: greenColorValue, blue: blueColorValue, alpha: 1)
    }


    @IBAction func firstSliderDidSlide(_ sender: UISlider) {
        let value = sender.value
        redColorValue = Double(value)
        colorsValueLabelStack[0].text = String(format: "%.2f", value)
        rectangleColorChanged()
    }


    @IBAction func secondSliderDidSlide(_ sender: UISlider) {
        let value = sender.value
        greenColorValue = Double(value)
        colorsValueLabelStack[1].text = String(format: "%.2f", value)
        rectangleColorChanged()
    }


    @IBAction func thirdSliderDidSlide(_ sender: UISlider) {
        let value = sender.value
        blueColorValue = Double(value)
        colorsValueLabelStack[2].text = String(format: "%.2f", value)
        rectangleColorChanged()
    }
}
