//
//  ViewController.swift
//  Calculategithub
//
//  Created by Teerawat kumsila on 1/27/17.
//  Copyright © 2017 Teerawat kumsila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //comment
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var PlusB: UIButton!
    
    @IBOutlet weak var MinusB: UIButton!
    
    @IBOutlet weak var MultiB: UIButton!
    
    @IBOutlet weak var DivB: UIButton!
    
    
    @IBOutlet weak var ResultL: UILabel!
    
    @IBOutlet weak var Value1: UITextField!
    
    @IBOutlet weak var Value2: UITextField!
    
    func getValue1 () -> Float32{
        if (Value1.text == "") {return 0 }
        else{
            return Float32(Value1.text!)!
        }
    }
    func getValue2 () -> Float32{
        if (Value2.text == "") {return 0 }
        else{
            return Float32(Value2.text!)!
        }
    }
    
    @IBAction func PlusBPress(_ sender: UIButton) {
        ResultL.text = String(getValue1() + getValue2())
    }
    @IBAction func MinusBPress(_ sender: UIButton) {
        ResultL.text = String(getValue1() - getValue2())
    }
    @IBAction func MultBPress(_ sender: UIButton) {
        ResultL.text = String(getValue1() * getValue2())
    }
    @IBAction func DivBPress(_ sender: UIButton) {
        if(getValue2() == 0){
            ResultL.text = "Nope"
        }
        else{
            ResultL.text = String(getValue1() / getValue2())
        }
    }
}

