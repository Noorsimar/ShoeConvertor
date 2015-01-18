//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Noorsimar on 18/01/15.
//  Copyright (c) 2015 Noorsimar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = mensShoeSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt()
//        var integerFromTextField = numberFromTextField!
        let integerFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionsConstant = 30
       // integerFromTextField += conversionsConstant
        
        mensConvertedShoeSizeLabel.hidden = false
        //mensConvertedShoeSizeLabel
        mensConvertedShoeSizeLabel.text = "\(integerFromTextField + conversionsConstant)" + " In European Shoe Size"
        mensConvertedShoeSizeLabel.textColor = UIColor.blueColor()
        
    }

    @IBAction func convertButtonPressedWomen(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionsConstant = 30.5
        
        womensConvertedShoeSizeLabel.hidden = false

        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionsConstant)" + " In European Shoe Size"
        womensConvertedShoeSizeLabel.textColor = UIColor.redColor()
    }

}

