//
//  ViewController.swift
//  Color Mixer
//
//  Created by Rashid Gaitov on 06.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var mainMenuColor = UIColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main Menu"
        view.backgroundColor = UIColor(red: ColorValues.red, green: ColorValues.green, blue: ColorValues.blue, alpha: 1)
        
    }


}

