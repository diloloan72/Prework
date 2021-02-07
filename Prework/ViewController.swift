//
//  ViewController.swift
//  Prework
//
//  Created by Loan Nguyen on 2021-02-05.
//  Copyright © 2021 Loan Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tipAmount = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let totalAmount = bill + tipAmount
        
        tipAmountLabel.text = String(format: "$%.2f", tipAmount)
        totalAmountLabel.text = String(format: "$%.2f", totalAmount)
    }
    
}

