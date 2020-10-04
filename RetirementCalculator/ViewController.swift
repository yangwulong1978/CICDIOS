//
//  ViewController.swift
//  RetirementCalculator
//
//  Created by Eduardo Rosas on 8/19/19.
//  Copyright © 2019 Eduardo Rosas. All rights reserved.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics
class ViewController: UIViewController,MSCrashesDelegate {

    @IBOutlet weak var monthlyInvestmentsTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var retirementAgeTextField: UITextField!
    @IBOutlet weak var interestRateTextField: UITextField!
    @IBOutlet weak var savingsTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MSCrashes.setDelegate(self)
        MSCrashes.setEnabled(true)
        MSCrashes.notify(with: .always)
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        if MSCrashes.hasCrashedInLastSession(){
            let alert = UIAlertController(title:"Oops",message: "Sorry about that, an error occured.",preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "It's cool", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        MSAnalytics.trackEvent("navigater_to_calculator")
    }
    func crashes(_ crashes: MSCrashes!, shouldProcessErrorReport errorReport: MSErrorReport!) -> Bool {
      return true; // return true if the crash report should be processed, otherwise false.
    }
    
    @IBAction func calculateButton_TouchUpInside(_ sender: Any) {
      //  MSCrashes.generateTestCrash()
        
      //  MSAnalytics.trackEvent("calculate_retirement_amount")
//        do{
//            try withdrawCash(amount: -100)
//        }catch IntParsingError.overflow{
//            print("overflow")
//        }
//        catch{
//
//        }
//
        
        
    }
//    enum IntParsingError: Error {
//        case overflow
//        case invalidInput(Character)
//    }
//    func withdrawCash(amount:Int)throws{
//        if amount < 0{
//            throw IntParsingError.overflow
//        }
//        
//        
//    }

}

