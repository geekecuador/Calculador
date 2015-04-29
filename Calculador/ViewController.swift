//
//  ViewController.swift
//  Calculador
//
//  Created by David Pulloquinga on 4/28/15.
//  Copyright (c) 2015 David Pulloquinga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var edt_resultado: UITextField!
    var tipiando = false
    var punto = false
    var alerta = UIAlertController(title: "Error", message: "No se permite más de un punto", preferredStyle: .Alert)
    
    @IBAction func asignar(sender: UIButton) {
        let digito = sender.currentTitle!
        if tipiando{
            edt_resultado.text = edt_resultado.text! + digito
        }
        else
        {
            edt_resultado.text = digito
            tipiando = true
            punto = true
        }

    }
    
    @IBAction func asignarPunto(sender: UIButton) {
        if punto{
            edt_resultado.text = edt_resultado.text! + "."
            punto = false
        }
        else
        {
            
            presentViewController(alerta, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func operar(sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alerta.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

