//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ferdy Fauzi on 14/12/2015.
//  Copyright © 2015 Ferdy Fauzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var answerText: UILabel!
    
    
    //IBAction
    @IBAction func myButton(sender: AnyObject) {
        
        myLabel.text = "Hello " + myTextField.text!
        self.view.endEditing(true)
        
    }
    
    
    @IBAction func btnCalculate(sender: AnyObject) {
        
        var num1:Int? {return Int(input1.text!)}
        var num2:Int? {return Int(input2.text!)}
        
        let total:Int! = num1! + num2!
        
        answerText.text = String(total)
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

}

