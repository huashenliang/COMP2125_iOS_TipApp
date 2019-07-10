//
//  ViewController.swift
//  Huashen-Liang_COMP2125_Lab03
//
//  Created by Huashen Liang on 2019-07-10.
//  Copyright © 2019 Huashen Liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var displayValue: Double {
        get {
            guard let number = Double(BillAmount.text!) else {
                fatalError("Cannot convert text to a double")
            }
            return number
        }
        
        set{
            BillAmount.text = String(newValue)
        }
    }

    @IBOutlet weak var BillAmount: UILabel!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var PercentageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Slider(_ sender: UISlider) {
        
        Slider.value = roundf(Slider.value)
        print(Slider.value)
        
        if Slider.value == 0 {
            PercentageLabel.text = "Custom Tip Percentage: 10%"
            
        }else if Slider.value == 1 {
            PercentageLabel.text = "Custom Tip Percentage: 15%"
        }else if Slider.value == 2 {
            PercentageLabel.text = "Custom Tip Percentage: 18%"
        }else if Slider.value == 3 {
            PercentageLabel.text = "Custom Tip Percentage: 20%"
        }else if Slider.value == 4 {
            PercentageLabel.text = "Custom Tip Percentage: 25%"
        }else if Slider.value == 5 {
            PercentageLabel.text = "Custom Tip Percentage: 30%"
        }
        
    
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton)
    {
        
    }
    

    
}

