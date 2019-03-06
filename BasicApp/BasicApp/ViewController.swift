//
//  ViewController.swift
//  BasicApp
//
//  Created by Noah Ainsworth on 2/20/19.
//  Copyright © 2019 Noah Ainsworth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewOne: UIView!
    
    @IBOutlet weak var viewTwo: UIView!
    
    @IBAction func tryButton(_ sender: UIButton) {
        viewOne.isHidden = true
        viewTwo.isHidden = false
    }
    
    //cups and milliliters
    var cups = String()
    var mili = String()
    var cupsFloat:Float = 0
    var miliFloat:Float = 0

    
    @IBOutlet weak var cupsField: UITextField!
    @IBOutlet weak var miliField: UITextField!

    @IBAction func convSubmit(_ sender: Any) {
        if cupsField.isEditing{
            cups = cupsField.text!
            cupsFloat = Float(cups)!
            miliFloat = ((cupsFloat * 236.5) * 100).rounded() / 100
            miliField.text = "\(miliFloat)"
        }
        else if miliField.isEditing{
            mili = miliField.text!
            miliFloat = Float(mili)!
            cupsFloat = ((miliFloat / 236.5) * 100).rounded() / 100
            cupsField.text = "\(cupsFloat)"
        }
        else{
            
        }
    }
    
    //ounces to grams
    var ounce = String()
    var gram = String()
    var ounceFloat:Float = 0
    var gramFloat:Float = 0
    
    @IBOutlet weak var ounceField: UITextField!
    @IBOutlet weak var gramField: UITextField!
    
    @IBAction func convSubmit2(_ sender: Any) {
        if ounceField.isEditing{
            ounce = ounceField.text!
            ounceFloat = Float(ounce)!
            gramFloat = ((ounceFloat * 28.35) * 100).rounded() / 100
            gramField.text = "\(gramFloat)"
        }
        else if gramField.isEditing{
            gram = gramField.text!
            gramFloat = Float(gram)!
            ounceFloat = ((gramFloat / 28.35) * 100).rounded() / 100
            ounceField.text = "\(ounceFloat)"
        }
        else{
            
        }
    }
    
    //teaspoons and tablespoons and milliliters
    var tsp = String()
    var tbsp = String()
    var mili2 = String ()
    
    var tspFloat:Float = 0
    var tbspFloat: Float = 0
    var mili2Float:Float = 0
    
    @IBOutlet weak var tspField: UITextField!
    @IBOutlet weak var mili2Field: UITextField!
    @IBOutlet weak var tbspField: UITextField!
    
    @IBAction func convSubmit3(_ sender: Any) {
        if tspField.isEditing{
            tsp = tspField.text!
            tspFloat = Float(tsp)!
            
            tbspFloat = ((tspFloat / 3) * 100).rounded() / 100
            tbspField.text = "\(tbspFloat)"
            
            mili2Float = ((tspFloat * 4.92) * 100).rounded() / 100
            mili2Field.text = "\(mili2Float)"
        }
        else if tbspField.isEditing{
            tbsp = tbspField.text!
            tbspFloat = Float(tbsp)!
            
            tspFloat = ((tbspFloat * 3) * 100).rounded() / 100
            tspField.text = "\(tspFloat)"
            
            mili2Float = ((tbspFloat * 14.78) * 100).rounded() / 100
            mili2Field.text = "\(mili2Float)"
        }
        else if mili2Field.isEditing{
            mili2 = mili2Field.text!
            mili2Float = Float(mili2)!
            
            tspFloat = ((mili2Float / 4.92) * 100).rounded() / 100
            tspField.text = "\(tspFloat)"
            
            tbspFloat = ((mili2Float / 14.79) * 100).rounded() / 100
            tbspField.text = "\(tbspFloat)"
        }
        else{
            
        }
    }
    
    
    
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }




}
