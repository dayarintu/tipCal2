//
//  ViewController.swift
//  tipCalC
//
//  Created by Daya on 6/16/17.
//  Copyright © 2017 Daya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var AmountTextField: UITextField!
    

    @IBOutlet weak var TipAmountTextField: UITextField!
    
    
    
    @IBOutlet weak var totalAmountField: UITextField!

    
    
    @IBOutlet weak var gifview: UIImageView!
    
    @IBOutlet weak var TipOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        gifview.loadGif(name: "dollar")
    }
    
    @IBAction func clearButton(_ sender: Any) {
        
        AmountTextField.text = ""
        TipAmountTextField.text = ""
        totalAmountField.text = ""
        
        TipOutlet.selectedSegmentIndex = -1
    }
    
    
    @IBAction func TipPercentSelector(_ sender: UISegmentedControl) {
        
        if let billAmount = Double(AmountTextField.text!) {
            switch TipOutlet.selectedSegmentIndex {
            case 0:
                TipAmountTextField.text = String((billAmount * 15.0) / 100.0)
                
            case 1:
                TipAmountTextField.text = String((billAmount * 20.0) / 100.0)
                
            case 2:
                TipAmountTextField.text = String((billAmount * 25.0) / 100.0)
            default:
                break
            }
        } else {
            AmountTextField.text = ""
        }
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        if AmountTextField.text != "" && TipAmountTextField.text != ""{
            calculateSound()
        }
        if let amount = Double(AmountTextField.text!) , let tip = Double(TipAmountTextField.text!) {
            let totalAmount = amount + tip
            totalAmountField.text = String(totalAmount)
        } else {
            AmountTextField.text = ""
        }
        
    }
    
}

