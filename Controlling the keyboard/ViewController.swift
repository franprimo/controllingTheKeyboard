//
//  ViewController.swift
//  Controlling the keyboard
//
//  Created by Fran Primo Ruiz on 22/6/15.
//  Copyright (c) 2015 Fran Primo Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    //Cuando presiono sobre el boton, el texto introducido
    //en el textfield se muesta en el label
    @IBAction func button(sender: AnyObject) {
        resultLabel.text = textField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Con este metodo consigo que cuando presione fuera del teclado, este se esconda.
    //Importante para todas las apps.
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
    //Con este metodo consigo que cuando le de al boton return en el teclado, este se esconda.
    //Importante para todas las apps.
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

