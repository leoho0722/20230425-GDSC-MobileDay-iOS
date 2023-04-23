//
//  ViewController.swift
//  BMIWithUIKit
//
//  Created by Leo Ho on 2023/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb: UILabel!
    @IBOutlet weak var txfHeight: UITextField!
    @IBOutlet weak var txfWeight: UITextField!
    @IBOutlet weak var btnCalc: UIButton!
    
    private var bmi: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCalcClicked(_ sender: UIButton) {
        view.endEditing(true)
        guard let txtHeight = txfHeight.text,
              let txtWeight = txfWeight.text,
              let height = Double(txtHeight),
              let weight = Double(txtWeight) else {
            return
        }
        bmi = weight / pow(height, 2)
        lb.text! += String(format: "%.6f", bmi)
    }
}
